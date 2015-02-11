json.user do
  json.extract! @user, :id, :username, :gold, :xp, :health, :level, :max_health

  json.tags @user.tags

  json.todos @user.todos do |todo|
    json.extract! todo, :id, :title, :rank, :created_at, :updated_at, :description, :strength
    json.tags todo.tags
  end

  json.rewards @user.rewards do |reward|
    json.extract! reward, :id, :title, :rank, :created_at, :updated_at, :description
    json.tags reward.tags
  end

  json.habits @user.habits do |habit|
    json.extract! habit, :id, :title, :rank, :created_at, :updated_at, :description, :strength, :quality
    json.tags habit.tags
  end

  json.dailies @user.dailies do |daily|
    json.extract! daily, :id, :title, :rank, :created_at, :updated_at, :last_checked, :description, :strength
    json.tags daily.tags
  end
end
