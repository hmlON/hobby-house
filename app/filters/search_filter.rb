class SearchFilter
  def posts
    Post.all
  end

  def filter
    raise NotImplementedError, 'This is an abstract method'
  end
end
