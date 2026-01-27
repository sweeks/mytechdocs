# Reminders

I use the Apple Reminders app to keep track of things that I need to do. My approach is
centered around a list, **Today**, that drives what I do. **Today** holds items that I can
and should do today, and that can be immediately acted on. All items for which that isn't
true go elsewhere, either on another list or in my **Reminders** calendar. I *never* let
items linger in **Today**. All the infrastructure and approach is aimed at keeping
**Today** simple and actionable.

My iPhone and iPad home screens have a Reminders widget that shows **Today**.

I have iOS Shortcuts automation that adds items to **Today** at appropriate times. I also
have an iOS shortcut, **Snooze**, located underneath my Reminders widget, that lets me
select items from **Today** and move them to one of the other lists or to the
**Reminders** calendar.

## Reminders Lists

Here are all the Reminders lists that I use.

- **Today**: the actionable list, described above.

- **Later Today**: items that I can and should do later today. These are automatically
  moved to **Today** at 6pm.

- **Tomorrow**: items that I can and should do tomorrow. These are automatically moved to
  **Today** at midnight.

- **Pending**: items that have started, but are blocked on another entity taking action.

- **Someday**: items that have not started, but that I want to do someday.

There is no automation around **Pending** or **Someday**. I look at **Pending**
occasionally and **Someday** rarely, and consider their items.

## Reminders Calendar

A Google Calendar named **Reminders** has events for things that I can and should do in
the future. This includes numerous recurring items, e.g. a weekly event to order
groceries.

## iOS Shortcuts Automation

iOS Shortcuts add items to **Today**, either by moving them from other lists or from my
**Reminders** calendar. My iPad runs these shortcuts automatically:

- `Add Calendar-based Reminders` hourly throughout the day.
- `Shift Later Today To Today` at 6pm.
- `Shift Tomorrow To Today` at midnight.

The `Shift` shortcuts are trivial. `Add Calendar-based Reminders` is more complicated. It
maintains an event titled `iOS CUTOFF` in the **Reminders** calendar. When the shortcut
runs, it processes all **Reminders** calendar events that started between `iOS CUTOFF`'s
start and _now_, adding an item to **Today** for each such event. It then updates the
`iOS CUTOFF` event to start at _now_.
