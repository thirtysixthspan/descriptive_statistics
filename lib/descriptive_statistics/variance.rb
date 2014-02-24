module DescriptiveStatistics
  def variance
    mean = self.mean
    self.map{ |sample| (mean - sample) ** 2 }.sum / self.number
  end
end
