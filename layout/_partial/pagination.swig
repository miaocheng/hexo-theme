{% if not is_post() %}
  <nav class="pagination">
    {% if page.prev %}
      <a href="{{ url_for(page.prev_link) }}" class="prev">
        <i class="iconfont">&#xe619;</i>
        <span class="prev-text">{{ __('posts.prev') }}</span>
      </a>
    {% endif %}
    {% if page.next %}
      <a href="{{ url_for(page.next_link) }}" class="next">
        <span class="next-text">{{ __('posts.next') }}</span>
        <i class="iconfont">&#xe60e;</i>
      </a>
    {% endif %}
  </nav>
{% else %}
  <nav class="post-nav">
    {% if page.prev %}
      <a href="{{ url_for(page.prev.path) }}" class="prev">
        <i class="iconfont">&#xe619;</i>
        <span class="prev-text nav-default">{{ page.prev.title }}</span>
        <span class="prev-text nav-mobile">{{ __('posts.prev_post') }}</span>
      </a>
    {% endif %}
    {% if page.next %}
      <a href="{{ url_for(page.next.path) }}" class="next">
        <span class="next-text nav-default">{{ page.next.title }}</span>
        <span class="next-text nav-mobile">{{ __('posts.next_post') }}</span>
        <i class="iconfont">&#xe60e;</i>
      </a>
    {% endif %}
  </nav>
{% endif %}
