json.extract! @habit, :id, :title, :rank, :created_at, :updated_at, :description, :strength, :quality, :clicks
json.tags @habit.tags
