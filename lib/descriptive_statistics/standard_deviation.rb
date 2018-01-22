module DescriptiveStatistics
  def standard_deviation(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.standard_deviation_empty_collection_default_value if values.empty?
    return 0.0 if values.number == 1 # Early return to avoid NaN values.

    Math.sqrt(values.variance)
  end
end
