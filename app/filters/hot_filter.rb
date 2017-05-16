class HotFilter < SearchFilter
  HotTime = 1.day

  def filter
    posts.where(created_at: period).order(:votes)
  end

  private

  def period
    HotTime.ago..Time.current
  end
end
