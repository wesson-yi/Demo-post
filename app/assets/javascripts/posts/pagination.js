(function() {
  jQuery(function() {
    if ($('#infinite-scrolling').size() > 0) {
      $(window).on('scroll', function() {
        var more_posts_url;
        more_posts_url = '/posts/' + $('#comments').attr('data-post-id') + '/comments' +
                          $('.pagination a.next_page').attr('href').match(/\?.*/)[0];
        console.log(more_posts_url)
        if (more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
          $('.pagination').html('<p> loading <p>');
          $.getScript(more_posts_url);
        }
      });
    }
  });
}).call(this);
