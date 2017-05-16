class SearchFilter
  def posts
    Post.all
  end

  def filter
    raise AbstractMethodError
  end
end

class AbstractMethodError < StandardError
  def initialize(msg='This is an abstract method')
    super
  end
end
