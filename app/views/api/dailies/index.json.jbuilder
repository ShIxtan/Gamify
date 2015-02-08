json.dailies @dailies do |daily|
  json.extract! daily, :id, :title, :rank, :created_at, :updated_at, :last_checked, :description, :strength
  json.tags daily.tags
end
