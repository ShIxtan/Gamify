# Phase 2: JSON API and adding Habits from Backbone
## Rails
### Models
Habits

### Controllers
Api::HabitsController (create, destroy, index, update)

### Views
* habits/index.json.jbuilder

## Backbone
### Models
* Habit

### Collections
* Habits

### Views
* MainView (composite view, contains TaskIndex and Header subviews)
  - Header
    - Navbar
  - TaskIndex
    - HabitIndexItem

## Gems/Libraries
* jQuery UI to make habits sortable.
