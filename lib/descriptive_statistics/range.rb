module DescriptiveStatistics
  def range(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.empty_collection_default_value unless values.size > 0

    values.max - values.min
  end 
end
