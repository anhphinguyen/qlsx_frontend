// function readURL(input) {
//     console.log(input);
//     if (input.files && input.files[0]) {
//         var reader = new FileReader();
//         var file_target = $('.form-file').attr('data-target');
//         var file_id = $('.form-file').attr('data-id');

//         reader.onload = function(e) {
//             $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "'] img")
//                 .attr('src', e.target.result);
//         };
//         reader.readAsDataURL(input.files[0]);


//         $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-block');
//         $(".form-file-view-img-close[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-block');
//         $(".form-file-img[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');
//         $(".form-file-input[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');
//         $(".form-file-img-title[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');

//     }

// }


$(document).ready(function() {

    $(".form-file-input").change(function() {
        var reader = new FileReader();

        var file_target = $(this).parent('.form-file-box').parent('.form-file').attr('data-target');
        var file_id = $(this).parent('.form-file-box').parent('.form-file').attr('data-id');

        reader.onload = function(e) {
            $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "'] img")
                .attr('src', e.target.result);
        };
        reader.readAsDataURL(this.files[0]);


        $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-block');
        $(".form-file-view-img-close[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-block');
        $(".form-file-img[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');
        $(".form-file-input[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');
        $(".form-file-img-title[data-target='" + file_target + "'][data-id='" + file_id + "']").toggleClass('d-none');
    });
    // $('.form-file-input').click(function() {
    //     console.log($(this).);

    //     // if ($(this).files && $(this).files[0]) {
    //     //     var reader = new FileReader();

    //     //     reader.onload = function(e) {
    //     //         $(this).parent('.form-file-box').children('form-file-view-img img')
    //     //             .attr('src', e.target.result);
    //     //     };

    //     //     reader.readAsDataURL($(this).files[0]);
    //     //     $(this).parent('.form-file-box').children('.form-file-view-img').toggleClass('d-block');
    //     //     $(this).parent('.form-file-box').children('.form-file-view-img-close').toggleClass('d-block');
    //     //     $(this).parent('.form-file-box').children('.form-file-img').toggleClass('d-none');
    //     //     $(this).toggleClass('d-none');
    //     //     $(this).parent('.form-file-box').children('.form-file-img-title').toggleClass('d-none');

    //     //     // $('#file_name .file-name').text(input.files[0].name);
    //     // }
    // });
    // $('.form-file-input').click(function() {
    //     if (input.files && input.files[0]) {
    //         var reader = new FileReader();

    //         reader.onload = function(e) {
    //             $(this).parent('.form-file-box').children('.form-file-view-img img')
    //                 .attr('src', e.target.result);
    //         };

    //         reader.readAsDataURL(input.files[0]);
    //         $(this).parent('.form-file-box').children('.form-file-view-img').toggleClass('d-block');
    //         $(this).parent('.form-file-box').children('.form-file-view-img-close').toggleClass('d-block');
    //         $(this).parent('.form-file-box').children('.form-file-img').toggleClass('d-none');
    //         $(this).toggleClass('d-none');
    //         $(this).parent('.form-file-box').children('.form-file-img-title').toggleClass('d-none');

    //         // $('#file_name .file-name').text(input.files[0].name);
    //     }
    // });
    // $("span[type='add_file']").click(function() {
    //     if ($('#attach').val() == "") {
    //         $('.form-file-view-img').removeClass('d-block');
    //         $('.form-file-view-img-close').removeClass('d-block');
    //         $('.form-file-img').removeClass('d-none');
    //         $('.form-file-input').removeClass('d-none');
    //         $('.form-file-img-title').removeClass('d-none');
    //     }
    // });


    // cancel thumb nail
    $(".form-file-view-img-close").click(function() {
        var file_target = $(this).parent('.form-file-box').parent('.form-file').attr('data-target');
        var file_id = $(this).parent('.form-file-box').parent('.form-file').attr('data-id');
        // alert(file_target);
        $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "'] img").attr('src', "");

        $(".form-file-view-img[data-target='" + file_target + "'][data-id='" + file_id + "']").removeClass('d-block');
        $(".form-file-view-img-close[data-target='" + file_target + "'][data-id='" + file_id + "']").removeClass('d-block');
        $(".form-file-img[data-target='" + file_target + "'][data-id='" + file_id + "']").removeClass('d-none');
        $(".form-file-input[data-target='" + file_target + "'][data-id='" + file_id + "']").removeClass('d-none');
        $(".form-file-img-title[data-target='" + file_target + "'][data-id='" + file_id + "']").removeClass('d-none');
    });

})