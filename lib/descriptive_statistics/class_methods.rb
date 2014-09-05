module DescriptiveStatistics

  class << self

    attr_accessor :empty_collection_default_value

    DescriptiveStatistics.instance_methods.each do |m|
      define_method(m, DescriptiveStatistics.instance_method(m))
    end

  end

end