# Convert dates that are wrapped in an element with a data-timestamp attribute
# to locate time. Works progressively-- no JS, no attribute, no change.

tzAbbr = (dateInput) ->
  dateObject = dateInput || new Date()
  dateString = dateObject + ""
  tzAbbr = (
    # Works for the majority of modern browsers
    dateString.match(/\(([^\)]+)\)$/) ||
    # IE outputs date strings in a different format:
    dateString.match(/([A-Z]+) [\d]{4}$/)
  )

  if tzAbbr
    # Old Firefox uses the long timezone name (e.g., "Central
    # Daylight Time" instead of "CDT")
    tzAbbr = tzAbbr[1].match(/[A-Z]/g).join("")

  return tzAbbr;

rewriteDatetimes = () ->
  $('*[data-timestamp]').each () ->
    el = $(this)
    m = moment(el.attr('data-timestamp'), "X")
    format = el.attr('data-dateformat') || "MMM Do h:mma ZZZ"
    parts = format.split("ZZZ")
    for part in parts
      if part.length > 0
        parts[i] = m.format(parts[i]);

    el.text(parts.join(tzAbbr(new Date())))

$ ->
  $(document).ready(rewriteDatetimes)
