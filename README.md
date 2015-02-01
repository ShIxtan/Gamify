# Flux-capacitr

[Heroku link][heroku]

[heroku]: www.my_url.com

## Minimum Viable Product
gamify is a clone of HabitRPG built on Rails and Backbone. Users can:

- [x] Create accounts
- [x] Create sessions (log in)
- [ ] Create/remove habits
- [ ] Create/remove dailies
- [ ] Create/remove to-dos
- [ ] Create/remove rewards
- [ ] Gain XP and Gold for doing habits, dailies, and to-dos
- [ ] Purchase rewards with gold

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication (~.5 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. I'll also add a login for guest users. The most important part of this
phase will be pushing the app to Heroku and ensuring that everything works
before moving on to phase 2.

[Details][phase-one]

### Phase 2: JSON API and Adding Habits from Backbone(~2 days)
I will add API routes to serve habit data as JSON, then add Backbone
models and collections that fetch data from those routes. By the end of this
phase, I'll have Backbone views to display and edit habits

[Details][phase-two]

### Phase 3: Dailies, To-dos, and Rewards(~2.5 days)
I will add Rails API routes for dailies, to-dos, and rewards. After each, I'll add Backbone Models and views to allow adding and removing in their respective lists. At this stage, the four lists will be very similar, but they will be differentiated in the next phase.

[Details][phase-three]

### Phase 4: Experience point rewards(~2 days)
I'll update the Rails User model to track Health, XP, and gold.
- [ ] add button to perform each habit that adds XP and Gold
- [ ] add similar button to dailies that can only be checked once a day
- [ ] add checkbox to to-dos that removes them in addition to granting rewards.
- [ ] add button to Rewards that allows purchasing them with gold.

[Details][phase-four]

### Phase 5: Punishments and levels(~1 day)
Add ways to lose health, like failing to do dailies, or allowing some habits to be "bad." Also allow "leveling up" when enough XP is gained. This should restore health, and increase the maximum. If a user's health hits 0, they "die" and go back to level one.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] have tasks change color to reflect how often they are done
- [ ] allow users to choose a "class," which displays a different avatar.
- [ ] allow users to "friend" each other, show friends' avatar and level.
- [ ] add default "equipment" the the rewards list that does things like increasing gold.
- [ ] create modal boxes that allow displaying and editing descriptions of tasks.
- [ ] give random "items" as rewards along with xp and gold.
- [ ] allow adding tags to tasks, as well as displying only tasks with a tag
- [ ] allow changing the difficulty of a task, modifying it's rewards.
- [ ] allow adding emojis to task titles.
- [ ] display purchased equipment on the user's avatar.


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
