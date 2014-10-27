module DescriptiveStatistics
  def median(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.median_empty_collection_default_value if values.empty?

    values.percentile(50)
  end
end
