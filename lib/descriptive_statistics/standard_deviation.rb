module DescriptiveStatistics
  def standard_deviation(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    Math.sqrt(values.variance)
  end
end
