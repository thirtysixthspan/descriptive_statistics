module DescriptiveStatistics
  def standard_deviation
    values = Support::convert(self)
    return unless values.size > 0

    Math.sqrt(values.variance)
  end
end
