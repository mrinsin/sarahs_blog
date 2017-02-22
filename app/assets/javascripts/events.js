$(document).ready(function() {
   $("#calendar").fullCalendar({
     events: "/events/get_events",
     timeFormat: "LT",
     defaultView: 'month',
     header: {
       left: 'title',
       center: '',
       right: 'prev,next month,agendaWeek,agendaDay',
     },
     height: 550

  });
});

//
//   });
// });
