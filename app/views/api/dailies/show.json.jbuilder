json.extract! @daily, :id, :title, :rank, :created_at, :updated_at, :last_checked, :description, :strength, :clicks
json.tags @daily.tags
