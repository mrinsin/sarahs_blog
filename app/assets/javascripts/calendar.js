$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: "/events/get_events",
     timeFormat: "LT"
  });
});
