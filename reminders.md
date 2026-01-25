# Reminders

I use iOS reminders to keep track of things that I need to do.

## Reminder Lists

I use the following lists:

- *Today*: items that I can and should do today, and can be immediately acted on. If that
  isn't the case for an item, then I move it to another list or to my *Reminders*
  calendar. *Today* is _the only list_ that drives me doing stuff. It never has items that
  last for multiple days. All the infrastructure and approach is aimed at keeping *Today*
  simple and actionable.

- *Later Today*: items that I can and should do later today. These are automatically moved
  to *Today* at 6pm.

- *Tomorrow*: items that I can and should do tomorrow. These are automatically moved to
  *Today* at midnight.

- *Pending*: items that have started, but are blocked on another entity taking action.

- *Someday*: items that have not started, but that I want to do someday.

# iOS Home Screen

My iPhone and iPad home screens have a Reminders widget that shows *Today*.

## Reminders Calendar

A Google Calendar named *Reminders* has events for things that I can and should do in the
future. This includes numerous recurring items, e.g. a weekly order-groceries event.

## iOS Automation

I have iOS shortcuts that add items to *Today*, either by moving them from other lists or
from my *Reminders* calendar. My iPad runs these shortcuts automatically:

- `Add Calendar-based Reminders` hourly throughout the day.
- `Shift Later Today To Today` at 6pm.
- `Shift Tomorrow To Today` at midnight.

The `Shift` shortcuts are trivial. `Add Calendar-based Reminders` is more complicated. It
maintains an event titled `iOS Cutoff` in the *Reminders* calendar. When the shortcut
runs, it processes all *Reminders* calendar events that started between `iOS Cutoff`'s
start and _now_, adding an item to *Today* for each such event. It then updates the
`iOS Cutoff` event to start at _now_.
