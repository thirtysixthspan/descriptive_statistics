module DescriptiveStatistics
  def percentile(p)
    sorted = self.sort
    return sorted[-1].to_f if p == 100        
    rank = p.to_f / 100.to_f * (self.number - 1) 
    lrank = rank.floor
    d = rank - lrank
    lower = sorted[lrank].to_f
    upper = sorted[lrank+1].to_f
    lower + (upper - lower) * d
  end
end
