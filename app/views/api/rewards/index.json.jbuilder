json.rewards @rewards do |reward|
  json.extract! reward, :id, :title, :rank, :created_at, :updated_at, :description, :cost
  json.tags reward.tags
end
