require 'safe/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics/safe'

  context "calculated using class methods" do

    let(:data) { [2,6,9,3,5,1,8,3,6,9,2] }
    subject { DescriptiveStatistics }

    it "calculates the number" do
      expect(subject.number(data)).to eql(11.0)
    end

    it "calculates the mean" do
      expect(subject.mean(data)).to eql(4.909090909090909)
    end

    it "calculates the median" do
      expect(subject.median(data)).to eql(5.0)
    end

    it "calculates the variance" do
      expect(subject.variance(data)).to eql(7.7190082644628095)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation(data)).to eql(2.778310325442932)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30, data)).to eql(3.0)
      expect(subject.percentile(50, data)).to eql(5.0)
      expect(subject.percentile(70, data)).to eql(6.0)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50, data)).to eql(subject.median(data))
    end

    it "calculates the mode" do
      expect(subject.mode(data)).to eql(2)
    end

    it "calculates the range" do
      expect(subject.range(data)).to eql(8.0)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(8, data)).to eql(81.81818181818183)
    end

   end

end