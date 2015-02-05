# Gamify

[Heroku link][heroku]

[heroku]: https://gamify.herokuapp.com/

## Minimum Viable Product
gamify is a clone of HabitRPG built on Rails and Backbone. Users can:

- [x] Create accounts
- [x] Create sessions (log in)
- [x] Create/remove habits
- [x] Create/remove dailies
- [x] Create/remove to-dos
- [x] Create/remove rewards
- [x] Gain Gold for doing habits, dailies, and to-dos
- [x] Purchase rewards with gold

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication(~.5 days) (-COMPLETE)
I will implement user authentication in Rails based on the practices learned at
App Academy. I'll also add a login for guest users. The most important part of this
phase will be pushing the app to Heroku and ensuring that everything works
before moving on to phase 2.

[Details][phase-one]

### Phase 2: JSON API and Adding Habits from Backbone(~2 days) -COMPLETE
I will add API routes to serve habit data as JSON, then add Backbone
models and collections that fetch data from those routes. By the end of this
phase, I'll have Backbone views to display and edit habits

[Details][phase-two]

### Phase 3: Dailies and To-dos(~2 days) -COMPLETE
I will add Rails API routes for dailies and to-dos. After each, I'll add Backbone Models and views to allow adding and removing in their respective lists. At this stage, the three lists will be very similar, but they will be differentiated in the next phase.

[Details][phase-three]

### Phase 4: Gold and rewards(~2 days) -COMPLETE
I'll update the Rails User model to track gold. Add one more model for Rewards that can be purchased with gold
- [x] add button to perform each habit that adds Gold
- [x] add similar button to dailies that can only be checked once a day
- [x] add checkbox to to-dos that removes them in addition to granting gold.
- [x] add button to rewards that "purchase" them by removing gold

[Details][phase-four]

### Bonus Features (TBD)
- [x] allow user to "level up" by gaining experience points
- [x] track user's health and have them "die" (go back to level one)
- [x] dailies reduce health if not completed.
- [ ] popup alert to show updates
- [x] progress bars for health and xp.
- [ ] allow "bad habits," that do damage.
- [ ] have tasks change color to reflect how often they are done
- [ ] allow users to choose a "class," which displays a different avatar.
- [ ] allow users to "friend" each other, show friends' avatar and level.
- [ ] add default "equipment" the the rewards list that does things like increasing gold.
- [ ] create modal boxes that allow displaying and editing descriptions of tasks.
- [ ] give random "items" as rewards along with xp and gold.
- [ ] allow adding tags to tasks, as well as displaying only tasks with a tag
- [ ] allow changing the difficulty of a task, modifying it's rewards.
- [ ] allow adding emojis to task titles.
- [ ] display purchased equipment on the user's avatar.


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
