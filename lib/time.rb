class Time

  def start_time
    @start = Time.now
  end

  def end_time
    @end = Time.now
  end

  def elapsed_time
    @end - @start
  end

end
