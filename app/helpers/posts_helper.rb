module PostsHelper
  def post_created_at(post)
    time_tag(post.created_at, "#{time_ago_in_words(post.created_at, include_seconds: true)} ago")
  end
end
