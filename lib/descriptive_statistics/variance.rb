module DescriptiveStatistics
  def variance(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.variance_empty_collection_default_value unless values.size > 0

    mean = values.mean
    values.map{ |sample| (mean - sample) ** 2 }.inject(:+) / values.number
  end
end
