function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.form-file-view-img img')
                .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
        $('.form-file-view-img').toggleClass('d-block');
        $('.form-file-view-img-close').toggleClass('d-block');
        $('.form-file-img').toggleClass('d-none');
        $('.form-file-input').toggleClass('d-none');
        $('.form-file-img-title').toggleClass('d-none');
    }

}

$(document).ready(function() {

    $("span[type='add_file']").click(function() {
        if ($('#attach').val() == "") {
            $('.form-file-view-img').removeClass('d-block');
            $('.form-file-view-img-close').removeClass('d-block');
            $('.form-file-img').removeClass('d-none');
            $('.form-file-input').removeClass('d-none');
            $('.form-file-img-title').removeClass('d-none');
        }
    });

    // cancel thumb nail
    $("span[type='cancel_thumb_nails']").click(function() {
        $('.form-file-view-img').removeClass('d-block');
        $('.form-file-view-img-close').removeClass('d-block');
        $('.form-file-img').removeClass('d-none');
        $('.form-file-input').removeClass('d-none');
        $('.form-file-img-title').removeClass('d-none');
    });

})