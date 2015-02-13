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
  after_update :maybe_level_up
  after_update :maybe_die

  attr_reader :password

  validates :username, :session_token, :password_digest, presence: true
  validates :username, :session_token, uniqueness: true
  validates :password, length: {minimum: 6, allow_nil: true}

  has_many :habits
  has_many :dailies
  has_many :todos
  has_many :rewards
  has_many :tags

  def self.new_seed
    seed = User.find(1)
    seeded = seed.dup
    seeded.session_token = seeded.generate_session_token
    seeded.username = "Guest#{Integer(rand*100)}"
    seeded.save!

    seed.tags.each do |tag|
      new_tag = tag.dup
      new_tag.save!
      seeded.tags << new_tag
    end

    seed.dailies.each do |daily|
      new_daily = daily.dup
      new_daily.save!
      seeded.dailies << new_daily
      tag_ids = []
      daily.tags.each do |tag|
        new_tag = seeded.tags.find_by(name: tag.name)
        tag_ids << new_tag.id if new_tag
      end
      new_daily.tag_ids = tag_ids
    end

    seed.todos.each do |todo|
      new_todo = todo.dup
      new_todo.save!
      seeded.todos << new_todo
      tag_ids = []
      todo.tags.each do |tag|
        new_tag = seeded.tags.find_by(name: tag.name)
        tag_ids << new_tag.id if new_tag
      end
      new_todo.tag_ids = tag_ids
    end

    seed.rewards.each do |reward|
      new_reward = reward.dup
      new_reward.save!
      seeded.rewards << new_reward
      tag_ids = []
      reward.tags.each do |tag|
        new_tag = seeded.tags.find_by(name: tag.name)
        tag_ids << new_tag.id if new_tag
      end
      new_reward.tag_ids = tag_ids
    end

    seed.habits.each do |habit|
      new_habit = habit.dup
      new_habit.save!
      seeded.habits << new_habit
      tag_ids = []
      habit.tags.each do |tag|
        new_tag = seeded.tags.find_by(name: tag.name)
        tag_ids << new_tag.id if new_tag
      end
      new_habit.tag_ids = tag_ids
    end

    return seeded
  end

  def maybe_level_up
    if !max_health || max_health < (45 + (level * 5))
      self.max_health = 45 + (level * 5)
      self.health = max_health
      self.xp = 0
      save!
    end
  end

  def maybe_die
    if !!health && health <= 0
      self.level = 1
      self.max_health = 50
      self.health = max_health
      self.xp = 0
      self.gold = 0
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
