module DescriptiveStatistics
  def number(collection = self)
    values = Support::extract(collection)

    values.to_a.size.to_f
  end
end
