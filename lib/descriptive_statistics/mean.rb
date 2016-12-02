module DescriptiveStatistics
  def mean(collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.mean_empty_collection_default_value if values.empty?

    values.sum.to_f / values.number
  end
end
