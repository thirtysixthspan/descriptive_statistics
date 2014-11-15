module DescriptiveStatistics
  def percentile(p, collection = self)
    values = Support::convert(collection)

    if values.empty?; DescriptiveStatistics.percentile_empty_collection_default_value
    elsif values.size == 1; values.first
    else
      values.sort!
      return values.last if p == 100
      rank = p / 100.0 * (values.size - 1)
      lower, upper = values[rank.floor,2]
      lower + (upper - lower) * (rank - rank.floor)
    end
  end
end
