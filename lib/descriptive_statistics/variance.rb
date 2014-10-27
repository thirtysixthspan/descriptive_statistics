module DescriptiveStatistics
  def variance(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.variance_empty_collection_default_value if values.empty?

    mean = values.mean
    values.map{ |sample| (mean - sample) ** 2 }.inject(:+) / values.number
  end
end
