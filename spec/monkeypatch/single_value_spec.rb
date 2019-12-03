require 'monkeypatch/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  subject { [2] }

  context "with a single value array" do

    it "calculates the number" do
      expect(subject.number).to eql(1.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(2.0)
    end

    it "calculates the median" do
      expect(subject.median).to eql(2.0)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(0.0)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(0.0)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(2.0)
      expect(subject.percentile(50)).to eql(2.0)
      expect(subject.percentile(70)).to eql(2.0)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50)).to eql(subject.median)
    end

    it "calculates the mode" do
      expect(subject.mode).to eql(2)
    end

    it "calculates the range" do
      expect(subject.range).to eql(0.0)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(2)).to eql(100.0)
    end

   end

end