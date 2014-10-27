module DescriptiveStatistics
  def mode(collection = self)
    values = Support::extract(collection)
    return if values.to_a.empty?

    values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first
  end
end
