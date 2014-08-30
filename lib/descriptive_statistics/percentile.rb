module DescriptiveStatistics
  def percentile(p)
    values = Support::convert(self)
    return unless values.size > 0

    sorted = values.sort
    return sorted[-1] if p == 100        
    rank = p / 100.0 * (values.number - 1) 
    lrank = rank.floor
    d = rank - lrank
    lower = sorted[lrank]
    upper = sorted[lrank+1]
    lower + (upper - lower) * d
  end
end
