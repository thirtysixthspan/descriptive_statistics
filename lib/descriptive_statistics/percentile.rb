module DescriptiveStatistics
  def percentile(p, collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.percentile_empty_collection_default_value unless values.size > 0

    return values.first unless values.size > 1

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
