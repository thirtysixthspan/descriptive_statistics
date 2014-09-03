module DescriptiveStatistics

  class << self

    DescriptiveStatistics.instance_methods.each do |m|
      define_method(m, DescriptiveStatistics.instance_method(m))
    end

  end

end