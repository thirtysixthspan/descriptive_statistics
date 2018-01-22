module DescriptiveStatistics
  def variance(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.variance_empty_collection_default_value if values.empty?

    return 0.0 if values.number == 1 # Early return to avoid NaN values.

    mean = values.mean
    values.map { |sample| (mean - sample) ** 2 }.reduce(:+) / (values.number - 1.0)
  end
end
