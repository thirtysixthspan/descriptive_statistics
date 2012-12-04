module DescriptiveStatistics
  def mode
    self.group_by { |e| e }.values.max_by(&:size).first
  end 
end
