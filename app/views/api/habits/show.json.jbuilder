json.extract! @habit, :id, :title, :rank, :created_at, :updated_at, :description, :strength, :quality
json.tags @habit.tags
