module DescriptiveStatistics
  def variance(collection = self)
    values = Support::convert(collection)
    return DescriptiveStatistics.empty_collection_default_value unless values.size > 0

    mean = values.mean
    values.map{ |sample| (mean - sample) ** 2 }.inject(:+) / values.number
  end

  def sample_variance(collection = self)
    values = Support::convert(collection)
    return unless values.size > 0

    mean = values.mean
    values.map{ |sample| (mean - sample) ** 2 }.inject(:+) / [values.number - 1, 1].max
  end
end
