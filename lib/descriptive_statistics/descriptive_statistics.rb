module DescriptiveStatistics
  def descriptive_statistics
    return { :number => self.number,
             :sum => self.sum,
             :variance => self.variance,
             :standard_deviation => self.standard_deviation,
             :min => self.min,
             :max => self.max,
             :mean => self.mean,
             :mode => self.mode,
             :median => self.median,
             :range => self.range,
             :q1 => self.percentile(25),
             :q2 => self.percentile(50),
             :q3 => self.percentile(75) }
  end
end
