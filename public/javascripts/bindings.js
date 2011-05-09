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
    $("#about").bind('click', function() {
      $(".active").removeClass('active');
      $(this).addClass('active');
      $("#content").addClass('rotate_content');
      setTimeout(function(){
        $("#content").addClass('drop_content');
        setTimeout(function(){
          $("#contentinfo").addClass('transform_content');
          $("#content").hide()
        }, 800);
      },700);
    });
});
