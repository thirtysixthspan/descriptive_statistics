module DescriptiveStatistics
  def number(collection = self)
    values = Support::extract(collection)

    values.size.to_f
  end
end
