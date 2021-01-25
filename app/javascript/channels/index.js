// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

//ハンバーガーボタンの記述
$(document).ready(function() {
  $(".menu-trigger").click(function () {
    $(this).toggleClass("active");
    $(this).next().toggleClass("onanimation");
    $('ul li').hide();
    $('ul li').each(function(i) {
      $(this).delay(80 * i).fadeIn(500);
    });
  });
});