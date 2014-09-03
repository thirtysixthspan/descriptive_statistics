module DescriptiveStatistics
  def range(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    values.max - values.min
  end 
end
