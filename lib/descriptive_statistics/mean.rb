module DescriptiveStatistics
  def mean(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    values.sum / values.number
  end 
end
