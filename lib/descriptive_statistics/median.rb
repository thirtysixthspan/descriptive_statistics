module DescriptiveStatistics
  def median(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.median_empty_collection_default_value if values.empty?

    values.sort!

    if values.size % 2 == 0
      rank = 0.5 * (values.size - 1)
      lower, upper = values[rank.floor,2]
      (lower + upper) / 2
    else
      values[(values.size - 1) / 2]
    end
  end
end
