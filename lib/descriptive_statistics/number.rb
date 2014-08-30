module DescriptiveStatistics
  def number
    values = Support::extract(self)

    values.size.to_f
  end
end
