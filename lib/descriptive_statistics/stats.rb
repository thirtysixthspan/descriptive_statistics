require 'forwardable'

module DescriptiveStatistics

  class Stats
    extend Forwardable

    DescriptiveStatistics.instance_methods.each do |m|
      def_delegator :@collection, m 
    end

    def initialize(collection)
      @collection = collection.clone.extend(DescriptiveStatistics)
    end

  end

end
