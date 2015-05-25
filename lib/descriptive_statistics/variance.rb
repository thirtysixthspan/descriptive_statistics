module DescriptiveStatistics
  def variance(s = false, collection = self, &block)
    values = Support::convert(collection, &block)
    return DescriptiveStatistics.variance_empty_collection_default_value if values.empty?

    mean = values.mean

    number = s ? values.number - 1 : values.number
    values.map { |sample| (mean - sample) ** 2 }.reduce(:+) / number
  end
end
