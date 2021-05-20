$(document).ready(function() {
    $("ul#main-menu li.item").click(function() {
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
        $(this).children('.box-contact-close').fadeToggle(); //.toggleClass('d-block')
        $(this).children('.box-contact').children('.icon-contact').fadeToggle(); //.toggleClass('d-none')
        $(this).children('.box-contact').children('.menu-contact ').fadeToggle(); //.toggleClass('d-block')
    });
    // account box
    $('.dir-user .icon').click(function() {
        $('#dir_box').fadeToggle();
    });
    $('.dir-user .arrow-down').click(function() {
        $('#dir_box').fadeToggle();
    });
    // header cart box
    $('.header-cart .icon').click(function() {
        $('.header-cart-box').fadeToggle();
    });

    // sidebar menu
    $("#sidebar_menu>li.item>a").click(function() {
        $("#sidebar_menu>li.item").removeClass("active");
        $(this).parent().addClass('active');
        if ($('#my_info').hasClass('active')) {
            $('#my_info').children('.sub-menu-profile').slideDown('1000');
        } else {
            $('#my_info').children('.sub-menu-profile').slideUp('1000');
        }
    });
    // sidebar sub menu
    $("#my_info>.sub-menu-profile>li.item>a").click(function() {
        $("#my_info>.sub-menu-profile>li.item").removeClass("active");
        $(this).parent().addClass('active');
    });
    // menu invoice
    $("#menu_invoice>li.item>a").click(function() {
        $("#menu_invoice>li.item").removeClass("active");
        $(this).parent().addClass('active');
    });


});