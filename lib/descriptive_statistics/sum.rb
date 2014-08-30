module DescriptiveStatistics
  def sum 
    values = Support::convert(self)
    return unless values.size > 0

    return values.inject(:+)
  end 
end
