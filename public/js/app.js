$(document).ready(function() {
    $("ul#main-menu li.item").click(function() {
        console.log($("ul#main-menu li.item"));
        $("ul#main-menu li.item").removeClass("active");
        $(this).addClass('active');
    });

    // product
    $("#wrapper.product .thumb-nail").click(function() {
        var thumb_nail = $(this).children('img').attr('src');
        $('.show-thumb-nail').addClass('d-block').slideDown('500');
        $('.show-thumb-nail').children('.modal-box').children('img').attr('src', thumb_nail);
    });
    $("#wrapper.product~.show-thumb-nail span").click(function() {
        $('.show-thumb-nail').addClass('d-none').removeClass('d-block');
    });

    // contact box
    $('#contact-box').click(function() {
        $(this).children('.box-contact-close').toggleClass('d-block');
        $(this).children('.box-contact').children('.icon-contact').toggleClass('d-none');
        $(this).children('.box-contact').children('.menu-contact ').toggleClass('d-block');
    });
    // account box
    $('.dir-user .icon').click(function() {
        $('.dir-box').toggleClass('d-block');
    });
    $('.dir-user .arrow-down').click(function() {
        $('.dir-box').toggleClass('d-block');
    });

});