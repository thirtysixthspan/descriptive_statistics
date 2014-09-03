module DescriptiveStatistics
  def mode(collection = self)
    values = Support::extract(collection)
    return unless values.size > 0

    values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first
  end 
end
