"use strict";
(function(window) {
   var app = Elm.Main.init({node : document.getElementById('view')});

   // receive something from Elm
   app.ports.googleAnalytics.subscribe(function (eve) {
      ga('send', 'event', eve.msg, eve.value);
   });

}(window));