module DescriptiveStatistics
  def coefficient_of_variation(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.coefficient_of_variation_empty_collection_default_value if values.empty?

    values.standard_deviation / values.mean
  end
end
