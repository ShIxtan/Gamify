Daily.create!([
  {title: "Prepare Spells", rank: 0, user_id: 1, last_checked: "2015-02-10 14:23:44", description: "Write at least 100 words", strength: 1},
  {title: "Slay Mutans", rank: 1, user_id: 1, last_checked: "2015-02-09 23:42:39", description: "flosss", strength: 4},
  {title: "Practice Cantrips", rank: 2, user_id: 1, last_checked: "2015-02-10 14:23:44", description: "do Anki flashcards", strength: 1},
  {title: "Practice Spells", rank: 3, user_id: 1, last_checked: "2015-02-10 17:03:43", description: "Do typing practice", strength: 6},
  {title: "Make camp early", rank: nil, user_id: 1, last_checked: nil, description: "In bed by 12", strength: 3}
])
Habit.create!([
  {title: "Spell Research", user_id: 1, rank: 0, quality: "gb", description: "Make a git commit", strength: 2},
  {title: "Strength Potion", user_id: 1, rank: 1, quality: "gb", description: "eat eggs", strength: 1},
  {title: "Prestidigitation", user_id: 1, rank: 5, quality: "gb", description: "Do laundry/dishes", strength: 4},
  {title: "Look for Quests", user_id: 1, rank: 3, quality: "gb", description: "Apply for a job", strength: 1},
  {title: "Learn new Cantrip", user_id: 1, rank: 2, quality: "gb", description: "Add cards to Anki", strength: 3},
  {title: "Hoard My Gold", user_id: 1, rank: 4, quality: "gb", description: "spend $0 other than transit and bills", strength: 5}
])
Reward.create!([
  {title: "Study undead", rank: 1, user_id: 1, description: "Watch Walking Dead"},
  {title: "Combat Practice", rank: 0, user_id: 1, description: "Play a game"},
  {title: "energy potion", rank: 2, user_id: 1, description: "soda"}
])
Tag.create!([
  {name: "morning", user_id: 1},
  {name: "evening", user_id: 1},
  {name: "class", user_id: 1},
  {name: "code", user_id: 1},
  {name: "health", user_id: 1}
])

Todo.create!([
  {title: "Demo Day!", user_id: 1, rank: nil, description: nil, strength: 3},
  {title: "Add Charts", user_id: 1, rank: 1, description: "Maybe use Chart.js", strength: 3},
  {title: "allow choosing +/-", user_id: 1, rank: nil, description: nil, strength: 3},
  {title: "focusout collapses", user_id: 1, rank: nil, description: nil, strength: 3},
  {title: "tooltips clear on click", user_id: 1, rank: nil, description: nil, strength: 3},
  {title: "allow choosing reward cost", user_id: 1, rank: nil, description: nil, strength: 3},
  {title: "something about titles being too long", user_id: 1, rank: nil, description: nil, strength: 3}
])
User.create!([
  {session_token: "GSykJIlQI30hl-5wQpwOhg", username: "Guest", password_digest: "$2a$10$D6k3ysOXr4RGiZBV3vmKtey99Bxg0NxXTjhOkdhoZir2Q3Mf1D2CS", gold: 1835, xp: 2, health: 140, level: 33, max_health: 210}
])
