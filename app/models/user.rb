# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gold            :integer          default("0")
#  xp              :integer          default("0")
#  health          :integer          default("50")
#  level           :integer          default("1")
#  max_health      :integer          default("50")
#

class User < ActiveRecord::Base
  after_initialize :ensure_session_token
  after_update :level_up

  attr_reader :password

  validates :username, :session_token, :password_digest, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  has_many :habits
  has_many :dailies
  has_many :todos
  has_many :rewards

  def level_up
    if max_health < (45 + (level * 5))
      self.max_health = 45 + (level * 5)
      self.health = max_health
      self.xp = 0
      save!
    end
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def reset_session_token!
    self.session_token = generate_session_token
    save!
    session_token
  end

  def generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def self.find_by_credentials (username, password)
    user = User.find_by(username: username)
    return nil unless user
    user.is_password?(password) ? user : nil
  end
end
