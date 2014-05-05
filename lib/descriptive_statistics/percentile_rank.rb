module DescriptiveStatistics
  # percent of cases that are at or below a score
  def percentile_rank(p)
    return (sort.rindex{ |x| x <= p} + 1.0) / number * 100.0
  end
end
