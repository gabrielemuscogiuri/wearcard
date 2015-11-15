/**
 * Created by Gabriele on 14/11/15.
 */

function slideUpHover(id) {
    $(".bottom-hover").removeClass('slideUp');
    document.getElementsByClassName("bottom-hover")[id].className += " slideUp";
    $("#dashboard .card").addClass('shadow');
};

$( document ).ready(function() {
    $( "#dashboard .bottom .glyphicon" ).click(function() {
            $("#dashboard .card").addClass('shadow');
    });
    $( ".bottom-hover" ).click(function() {
        $( ".bottom-hover").removeClass('slideUp');
        $( ".card").removeClass('shadow');

    });
});


$(function () {
    $('[data-toggle="tooltip"]').tooltip()
})