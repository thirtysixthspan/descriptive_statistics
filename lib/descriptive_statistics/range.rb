module DescriptiveStatistics
  def range(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.range_empty_collection_default_value if values.empty?

    values.max - values.min
  end 
end
