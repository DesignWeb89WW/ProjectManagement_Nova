$(document).ready(function () {
    $('.result-table').wrap("<div class='responsive'/>");

    $('.js-menu-callup_main').click(function (e) {
        e.preventDefault();
        $('body').addClass("menu-opening");

        window.setTimeout(function () {
            $('body').addClass("menu-open").removeClass("menu-opening")
        }, 1000);
    });

    $('.js-menu-closeall').click(function (e) {
        e.preventDefault();
        $('body').addClass("menu-closing").removeClass('menu-open');

        window.setTimeout(function () {
            $('body').removeClass("menu-closing");
        }, 1000);
    });

    $('.js-modal-callup-tgt').click(function (e) {
        e.preventDefault();
        var tgt = $(this).attr('href');
        $(tgt).addClass("show");
        $('body').addClass("modal-opening");

        window.setTimeout(function () {
            $('body').addClass("modal-open").removeClass("modal-opening")
        }, 1000);
    });

    $('.js-modal-closeall').click(function (e) {
        e.preventDefault();
        var tgt = $('.js-modal');

        $('body').addClass("modal-closing").removeClass('modal-open');

        window.setTimeout(function () {
            $('body').removeClass("modal-closing");
            $(tgt).removeClass('show');
        }, 1000);
    });

    $('.js-tabs a').click(function (e) {
        e.preventDefault();
        $(this).parent().parent(".js-tabs").find("a").removeClass("active");
        $(this).addClass("active");

        var tgt = $(this).attr("href");
        var dataparent = $(this).data("content");
        $("#" + dataparent).children(".js-pane").removeClass("active");
        $(tgt).addClass("active");
    });

    ClassicEditor
        .create(document.getElementsByClassName('ckedit'), {
            // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
        })
        .then(editor => {
            window.editor = editor;
        })
        .catch(err => {
            console.error(err.stack);
        });

    
});