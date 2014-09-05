module DescriptiveStatistics
  def standard_deviation(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.empty_collection_default_value unless values.size > 0

    Math.sqrt(values.variance)
  end
end
