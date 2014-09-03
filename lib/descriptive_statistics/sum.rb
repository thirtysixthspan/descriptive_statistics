module DescriptiveStatistics
  def sum(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    return values.inject(:+)
  end 
end
