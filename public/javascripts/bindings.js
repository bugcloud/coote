$(function() {
    $(".reply_link").each(function() {
        $(this).bind('click', function() {
            var clicked = $(this);
            var id = $(this).attr("data-mono-id");
            $.ajax({
                url: "/mono/" + id + "/comment/new",
                success: function(data) {
                    clicked.unbind('click');
                    $("#comments_area_" + id).append(data);
                }
            });
        });
    });
});
