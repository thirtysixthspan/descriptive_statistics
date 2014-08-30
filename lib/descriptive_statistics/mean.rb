module DescriptiveStatistics
  def mean
    values = Support::convert(self)
    return unless values.size > 0

    values.sum / values.number
  end 
end
