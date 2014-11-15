module DescriptiveStatistics
  def mean(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.mean_empty_collection_default_value if values.empty?

    values.sum / values.number
  end
end
