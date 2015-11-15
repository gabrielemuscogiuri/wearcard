/**
 * Created by Gabriele on 14/11/15.
 */

$( document ).ready(function() {
    function slideUpHover(id) {
        $("#"+id+" .bottom-hover").addClass('slideUp');
        console.log("#"+id);
        $("#dashboard .card").addClass('shadow');
    };
    $( "#dashboard .bottom .glyphicon" ).click(function() {
            $("#dashboard .bottom-hover").addClass('slideUp');
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