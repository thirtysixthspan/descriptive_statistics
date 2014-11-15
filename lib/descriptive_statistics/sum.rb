module DescriptiveStatistics
  def sum(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.sum_empty_collection_default_value if values.empty?

    return values.reduce(:+)
  end
end
