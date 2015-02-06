class TaskClick < ActiveRecord::Base
  validates :clickable_id, :clickable_type, presence: true

  belongs_to :clickable, polymorphic: true
end
