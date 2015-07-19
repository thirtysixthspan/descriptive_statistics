module DescriptiveStatistics
  def descriptive_statistics(&block)
    { number: number(&block),
      sum: sum(&block),
      variance: variance(&block),
      standard_deviation: standard_deviation(&block),
      min: min(&block),
      max: max(&block),
      mean: mean(&block),
      mode: mode(&block),
      median: median(&block),
      range: range(&block),
      q1: percentile(25, &block),
      q2: percentile(50, &block),
      q3: percentile(75, &block) }
  end
end
