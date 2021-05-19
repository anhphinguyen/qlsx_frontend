function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        var img_src = $('.form-file-view-img img').attr("src");
        if (img_src != "") {
            $('.form-file-view-img').css({ 'height': 'auto', 'opacity': '1' });
            $('.form-file-view-img-close').css('opacity', '1');
            $('.form-file-img').css('opacity', '0');
            $('.form-file-img-title').css('opacity', '0');
        }
        reader.onload = function(e) {
            $('.form-file-view-img img')
                .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
        $('#show_info_file').removeClass('visible-hidden');
        $('#show_info_file>div').removeClass('d-none');
        $('#file_name .file-name').text(input.files[0].name);
        // alert(input.files[0].name);
    }
}

// function closeViewImg() {
//     $('.form-file-view-img').css({ 'height': '250px', 'opacity': '0' });
//     $('.form-file-img').css('opacity', '1');
//     $('.form-file-img-title').css('opacity', '1');
// }
$(document).ready(function() {

    $('#add_attach_file .form-file-view-img-close').click(function() {
        $('.form-file-view-img').css({ 'height': '200px', 'opacity': '0' });
        $('.form-file-view-img-close').css('opacity', '0');
        $('.form-file-img').css('opacity', '1');
        $('.form-file-img-title').css('opacity', '1');
    });

    $("a[href='#add_attach_file']").click(function() {
        $('#add_attach_file').removeClass('d-none');
    });


    $("a[href='#cancel_add_attach']").click(function() {
        $('#add_attach_file').addClass('d-none');
    });

    $('#add_attach').click(function() {
        var note_input = $('#add_attach_file #note_input').val();
        if (note_input != "") {
            $('#show_info_file #note').text(note_input);
            // alert(note_input);

            $("a[href='#add_attach_file']").addClass('d-none');
        }
        $('#add_attach_file').addClass('d-none');
    });


    $("a[href='#cancel_delete_attach']").click(function() {
        $('#delete_attach_file').addClass('d-none');
    });

    $('#delete_attach').click(function() {
        $('#show_info_file').addClass('visible-hidden');
        $('#show_info_file>div').addClass('d-none');
        $('#file_name .file-name').text("");
        $('#show_info_file #note').text("");

        // $("a[href='#delete_attach_file']").addClass('d-none');
        $('#delete_attach_file').addClass('d-none');
    });

})