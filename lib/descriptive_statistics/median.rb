module DescriptiveStatistics
  def median
    values = Support::convert(self)
    return unless values.size > 0

    values.percentile(50)
  end 
end
