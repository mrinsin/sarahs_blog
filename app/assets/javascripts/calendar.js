$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: [
        {
          title: 'Concert #1',
          start: '2017-02-28',
          allDay: true
        }
      ]
  });
});

// $(document).ready( 'get_events', function(start, end, callback) {
//    $("#calendar").fullCalendar({
//      events: "/events/get_events",
//      timeFormat: "LT"
//   });
//
//
//
// $("#calendar").fullCalendar('addEvent', event);
// });
