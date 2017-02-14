// $(document).ready(function() {
//    $("#calendar").fullCalendar({
//      events: [
//         {
//           title: 'Concert #1',
//           start: '2016-06-01',
//           allDay: true
//         }
//       ]
//   });
// });

$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: "/events/get_events",
     timeFormat: "LT"
  });
});
