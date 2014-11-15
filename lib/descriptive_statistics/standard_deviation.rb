module DescriptiveStatistics
  def standard_deviation(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.standard_deviation_empty_collection_default_value if values.empty?

    Math.sqrt(values.variance)
  end
end
