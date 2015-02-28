user = User.create!(
  {username: "Guest#{rand*999999}", password: "password", gold: 0, xp: 0, health: 50, level: 1, max_health: 50}
)

dailies = Daily.create!([
  {title: "Prepare Spells", rank: 0, user_id: user.id, last_checked: nil, description: "Write at least 100 words", strength: 1},
  {title: "Slay Mutans", rank: 1, user_id: user.id, last_checked: nil, description: "flosss", strength: 4},
  {title: "Practice Cantrips", rank: 2, user_id: user.id, last_checked: nil, description: "do Anki flashcards", strength: 2},
  {title: "Practice Spells", rank: 3, user_id: user.id, last_checked: nil, description: "Do typing practice", strength: 5},
  {title: "Make camp early", rank: 4, user_id: user.id, last_checked: nil, description: "In bed by 12", strength: 3}
])
habits = Habit.create!([
  {title: "Spell Research", user_id: user.id, rank: 0, quality: "g", description: "Make a git commit", strength: 1},
  {title: "Strength Potion", user_id: user.id, rank: 1, quality: "gb", description: "eat eggs for breakfast", strength: 2},
  {title: "Prestidigitation", user_id: user.id, rank: 5, quality: "g", description: "Do laundry/dishes", strength: 3},
  {title: "Look for Quests", user_id: user.id, rank: 3, quality: "g", description: "Apply for a job", strength: 4},
  {title: "Learn new Cantrip", user_id: user.id, rank: 2, quality: "g", description: "Add cards to Anki", strength: 5},
  {title: "Hoard My Gold", user_id: user.id, rank: 4, quality: "gb", description: "spend $0 other than transit and bills", strength: 5}
])
rewards = Reward.create!([
  {title: "Study Undead", rank: 1, user_id: user.id, cost: 20, description: "Watch Walking Dead"},
  {title: "Combat Practice", rank: 0, user_id: user.id, cost: 10, description: "Play a game"},
  {title: "Energy Potion", rank: 2, user_id: user.id, cost: 200, description: "Drink a soda"}
])
tags = Tag.create!([
  {name: "morning", user_id: user.id},
  {name: "evening", user_id: user.id},
  {name: "class", user_id: user.id},
  {name: "code", user_id: user.id},
  {name: "health", user_id: user.id}
])
todos = Todo.create!([
  {title: "Demo Day!", user_id: user.id, rank: 0, description: nil, strength: 2},
  {title: "Call Grandma", user_id: user.id, rank: 1, description: nil, strength: 3},
  {title: "Accept a quest", user_id: user.id, rank: 2, description: "get a job", strength: 1},
  {title: "Write js demo", user_id: user.id, rank: 3, description: nil, strength: 4},
  {title: "Make js flashcards", user_id: user.id, rank: 4, description: nil, strength: 1},
  {title: "write list app", user_id: user.id, rank: 5, description: nil, strength: 5},
])

clicks = TaskClick.create!([
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[0].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[1].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[2].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[2].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[2].id, sign: 1},
    {clickable_type: "Reward", clickable_id: rewards[2].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[0].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[1].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[2].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[2].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[2].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[2].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: -1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[3].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1},
    {clickable_type: "Habit", clickable_id: habits[4].id, sign: 1}
])
clicks.each do |click|
  click.update_attribute :created_at, (rand*15).days.ago
end

user_tags = user.tag_ids
[dailies, rewards, habits, todos].each do |class_type|
  class_type.each do |task|
    ids = []
    rand*5.times { ids.push(user_tags[rand*4]) }
    task.tag_ids = ids
  end
end
