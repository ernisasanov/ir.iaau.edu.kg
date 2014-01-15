$(document).ready(function(){

    $(".course").click(function(){
        $(this).children(".course-descr").slideToggle();
    });

    $(".staff-more").click(function(){
        $(this).parent().parent().parent().children(".staff-info").slideToggle();
    });

});
