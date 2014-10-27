module DescriptiveStatistics
  def mode(collection = self)
    return if collection.empty?

    values = Support::extract(collection)
    values
      .group_by { |e| e }
      .values
      .max_by(&:size)
      .first
  end
end
