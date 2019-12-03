require 'monkeypatch/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  subject { Set.new([2,6,9,3,5,1,8,3,6,9,2]) }

  context "with a set" do

    it "responds to all statistics methods" do
      DescriptiveStatistics.instance_methods.each do |method|
        expect(subject).respond_to? method
      end
    end

    it "calculates the number" do
      expect(subject.number).to eql(7.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(4.857142857142857)
    end

    it "calculates the median" do
      expect(subject.median).to eql(5.0)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(7.836734693877552)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(2.799416848895061)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(2.8)
      expect(subject.percentile(50)).to eql(5.0)
      expect(subject.percentile(70)).to eql(6.399999999999999)
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
      expect(subject.percentile_rank(8)).to eql(85.71428571428571)
    end

   end

end