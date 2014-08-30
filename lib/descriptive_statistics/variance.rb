module DescriptiveStatistics
  def variance
    values = Support::convert(self)
    return unless values.size > 0

    mean = values.mean
    values.map{ |sample| (mean - sample) ** 2 }.inject(:+) / values.number
  end
end
