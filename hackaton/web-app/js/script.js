/**
 * Created by Gabriele on 14/11/15.
 */

$( document ).ready(function() {

    $( ".bottom .glyphicon" ).click(function() {
        $( ".bottom-hover").addClass('slideUp');
        $( ".card").addClass('shadow');
    });
    $( ".bottom-hover" ).click(function() {
        $( ".bottom-hover").removeClass('slideUp');
        $( ".card").removeClass('shadow');

    });
});

$(function () {
    $('[data-toggle="tooltip"]').tooltip()
})