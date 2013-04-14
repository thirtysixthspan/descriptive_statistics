module DescriptiveStatistics
  def sum(identity = 0, &block)
    if block_given?
      map(&block).sum(identity)
    else
      inject(:+) || identity
    end
  end
end