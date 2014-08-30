module DescriptiveStatistics
  # percent of cases that are at or below a score
  def percentile_rank(p)
    values = Support::convert(self)
    return unless values.size > 0

    return (((values.sort.rindex{ |x| x <= p } || -1.0) + 1.0)) / values.number * 100.0
  end
end
