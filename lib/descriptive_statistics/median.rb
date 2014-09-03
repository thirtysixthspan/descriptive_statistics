module DescriptiveStatistics
  def median(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    values.percentile(50)
  end 
end
