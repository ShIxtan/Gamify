json.todos @todos do |todo|
  json.extract! todo, :id, :title, :rank, :created_at, :updated_at, :description, :strength
  json.tags todo.tags
end
