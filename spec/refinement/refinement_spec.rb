require 'refinement/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics/refinement'

  it "is refinable" do

    class Test
      def self.unrefined
        [1, 2, 3].mean
        {a:1, b:2, c:3}.mean
      end

      using DescriptiveStatistics::Refinement.new(Array, Hash)

      def self.refined
        [1,2,3].mean
        {a:1, b:2, c:3}.mean
      end
    end

    expect{Test.unrefined}.to raise_error
    expect{Test.refined}.not_to raise_error
  end

end