module DescriptiveStatistics
  def mean(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.mean_empty_collection_default_value unless values.size > 0

    values.sum / values.number
  end 
end
