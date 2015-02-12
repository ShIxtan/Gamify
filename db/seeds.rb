Daily.create!([
  {title: "Prepare Spells", rank: 0, user_id: 1, last_checked: "2015-02-10 14:23:44", description: "Write at least 100 words", strength: 1},
  {title: "Slay Mutans", rank: 1, user_id: 1, last_checked: "2015-02-09 23:42:39", description: "flosss", strength: 4},
  {title: "Practice Cantrips", rank: 2, user_id: 1, last_checked: "2015-02-10 14:23:44", description: "do Anki flashcards", strength: 2},
  {title: "Practice Spells", rank: 3, user_id: 1, last_checked: "2015-02-10 17:03:43", description: "Do typing practice", strength: 5},
  {title: "Make camp early", rank: nil, user_id: 1, last_checked: nil, description: "In bed by 12", strength: 3}
])
Habit.create!([
  {title: "Spell Research", user_id: 1, rank: 0, quality: "gb", description: "Make a git commit", strength: 1},
  {title: "Strength Potion", user_id: 1, rank: 1, quality: "gb", description: "eat eggs", strength: 2},
  {title: "Prestidigitation", user_id: 1, rank: 5, quality: "gb", description: "Do laundry/dishes", strength: 3},
  {title: "Look for Quests", user_id: 1, rank: 3, quality: "gb", description: "Apply for a job", strength: 4},
  {title: "Learn new Cantrip", user_id: 1, rank: 2, quality: "gb", description: "Add cards to Anki", strength: 5},
  {title: "Hoard My Gold", user_id: 1, rank: 4, quality: "gb", description: "spend $0 other than transit and bills", strength: 5}
])
Reward.create!([
  {title: "Study undead", rank: 1, user_id: 1, cost: 20, description: "Watch Walking Dead"},
  {title: "Combat Practice", rank: 0, user_id: 1, cost: 10, description: "Play a game"},
  {title: "energy potion", rank: 2, user_id: 1, cost: 200, description: "soda"}
])
Tag.create!([
  {name: "morning", user_id: 1},
  {name: "evening", user_id: 1},
  {name: "class", user_id: 1},
  {name: "code", user_id: 1},
  {name: "health", user_id: 1}
])
Todo.create!([
  {title: "Demo Day!", user_id: 1, rank: nil, description: nil, strength: 2},
  {title: "Call Grandma", user_id: 1, rank: 1, description: nil, strength: 3},
  {title: "Accept a quest", user_id: 1, rank: nil, description: "get a job", strength: 1},
  {title: "Write js demo", user_id: 1, rank: nil, description: nil, strength: 4},
  {title: "Make js flashcards", user_id: 1, rank: nil, description: nil, strength: 1},
  {title: "write list app", user_id: 1, rank: nil, description: nil, strength: 5},
])
User.create!([
  {session_token: "GSykJIlQI30hl-5wQpwOhg", username: "Guest", password_digest: "$2a$10$D6k3ysOXr4RGiZBV3vmKtey99Bxg0NxXTjhOkdhoZir2Q3Mf1D2CS", gold: 37, xp: 2, health: 45, level: 2, max_health: 50}
])

TaskClick.create!([
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 1, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 2, sign: 1},
    {clickable_type: "Reward", clickable_id: 3, sign: 1},
    {clickable_type: "Reward", clickable_id: 3, sign: 1},
    {clickable_type: "Reward", clickable_id: 3, sign: 1},
    {clickable_type: "Reward", clickable_id: 3, sign: 1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 1, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: -1},
    {clickable_type: "Habit", clickable_id: 2, sign: 1},
    {clickable_type: "Habit", clickable_id: 2, sign: 1},
    {clickable_type: "Habit", clickable_id: 2, sign: 1},
    {clickable_type: "Habit", clickable_id: 2, sign: 1},
    {clickable_type: "Habit", clickable_id: 2, sign: 1},
    {clickable_type: "Habit", clickable_id: 3, sign: 1},
    {clickable_type: "Habit", clickable_id: 3, sign: 1},
    {clickable_type: "Habit", clickable_id: 3, sign: -1},
    {clickable_type: "Habit", clickable_id: 3, sign: -1},
    {clickable_type: "Habit", clickable_id: 4, sign: -1},
    {clickable_type: "Habit", clickable_id: 4, sign: -1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 4, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1},
    {clickable_type: "Habit", clickable_id: 5, sign: 1}
])
TaskClick.all.each do |click|
  click.update_attribute :created_at, (rand*15).days.ago
end

[Daily, Reward, Habit, Todo].each do |class_type|
  class_type.all.each do |task|
    ids = []
    rand*5.times { ids.push(rand*5) }
    task.tag_ids = ids
  end
end
