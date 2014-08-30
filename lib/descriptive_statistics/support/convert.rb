require 'set'

module DescriptiveStatistics

  module Support

    def self.convert(from_enumerable)
      extend to_float to_array from_enumerable
    end

    def self.extract(from_enumerable)
      extend to_array from_enumerable
    end

    private

    def self.extend(enumerable)
      enumerable.extend(DescriptiveStatistics) 
    end

    def self.to_float(enumerable)
      enumerable.map(&:to_f)
    end

    def self.to_array(enumerable)
      case enumerable
      when Hash
        enumerable.values.each
      when Set
        enumerable.to_a.each
      else
        enumerable.each
      end
    end

  end

end
