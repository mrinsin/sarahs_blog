$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: "/events/get_events",
     timeFormat: "LT"
  });
});

// $(document).ready(function() {
//    $("#calendar").fullCalendar({
//      events: [
//         {
//           title: 'Tennis',
//           start: '2017-02-22',
//           allDay: true
//         },{
//           title: 'concert 1',
//           start: '2017-02-02',
//           allDay: true
//         },{
//           title: $('concert2'),
//           start: '2017-02-03',
//           allDay: true
//         },{
//           title: $('concert3'),
//           start: '2017-02-07',
//           allDay: true
//         },{
//           title: $('concert4'),
//           start: '2017-02-10',
//           allDay: true
//         }
//
//       ],
//       header: {
//              left: 'title',
//              center: '',
//              right: 'prev,next month,agendaWeek,agendaDay',
//            },
//            height: 400,
//           eventClick: function(event) {
//            if (event.url) {
//                window.open(event.url, "_blank");
//                return false;
//            }
//          }
//   });
// });
