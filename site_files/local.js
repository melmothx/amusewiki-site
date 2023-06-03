/* Empty by default, for local changes */
$(document).ready(function() {
    var current = window.location.pathname;
    $('.amusewiki-site-nav-right').children().each(function() {
        var el = $(this);
        if (el.attr('href') === current) {
            el.addClass('active');
        }
    });
});
