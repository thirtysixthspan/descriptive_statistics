module DescriptiveStatistics
  def range
    values = Support::convert(self)
    return unless values.size > 0

    values.max - values.min
  end 
end
