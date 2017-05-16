class PopularFilter < SearchFilter
  def filter
    posts.order(:votes)
  end
end
