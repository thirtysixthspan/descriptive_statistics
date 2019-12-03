require 'safe/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics/safe'

  subject { [2,6,9,3,5,1,8,3,6,9,2] }

  it "is extendable" do
    subject.extend(DescriptiveStatistics)
    DescriptiveStatistics.instance_methods.each do |method|
      expect(subject).respond_to? method
    end
  end

  context "is extended" do

    before do
      subject.extend(DescriptiveStatistics)
    end

    it "calculates the number" do
      expect(subject.number).to eql(11.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(4.909090909090909)
    end

    it "calculates the median" do
      expect(subject.median).to eql(5.0)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(7.7190082644628095)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(2.778310325442932)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(3.0)
      expect(subject.percentile(50)).to eql(5.0)
      expect(subject.percentile(70)).to eql(6.0)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50)).to eql(subject.median)
    end

    it "calculates the mode" do
      expect(subject.mode).to eql(2)
    end

    it "calculates the range" do
      expect(subject.range).to eql(8.0)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(8)).to eql(81.81818181818183)
    end

   end

end