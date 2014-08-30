module DescriptiveStatistics
  def mode
    values = Support::extract(self)
    return unless values.size > 0

    values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first
  end 
end
