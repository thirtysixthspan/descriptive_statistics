require 'monkeypatch/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  subject { [] }

  context "with a default of nil" do

    before do
      DescriptiveStatistics.empty_collection_default_value = nil
    end

    it "calculates the number" do
      expect(subject.number).to eql(0.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(nil)
    end

    it "calculates the median" do
      expect(subject.median).to eql(nil)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(nil)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(nil)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(nil)
      expect(subject.percentile(50)).to eql(nil)
      expect(subject.percentile(70)).to eql(nil)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50)).to eql(subject.median)
    end

    it "does not calculate a mode" do
      expect(subject.mode).to eql(nil)
    end

    it "calculates the range" do
      expect(subject.range).to eql(nil)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(8)).to eql(nil)
    end

  end

  context "with a default of 0.0" do

    before do
      DescriptiveStatistics.empty_collection_default_value = 0.0
    end

    it "sets a default" do
      expect(DescriptiveStatistics.empty_collection_default_value).to eql(0.0)
    end

    it "calculates the number" do
      expect(subject.number).to eql(0.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(0.0)
    end

    it "calculates the median" do
      expect(subject.median).to eql(0.0)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(0.0)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(0.0)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(0.0)
      expect(subject.percentile(50)).to eql(0.0)
      expect(subject.percentile(70)).to eql(0.0)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50)).to eql(subject.median)
    end

    it "does not calculate a mode" do
      expect(subject.mode).to eql(nil)
    end

    it "calculates the range" do
      expect(subject.range).to eql(0.0)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(8)).to eql(0.0)
    end

  end

  context "with a default of 0.0 only for variance" do

    before do
      DescriptiveStatistics.empty_collection_default_value = nil
      DescriptiveStatistics.variance_empty_collection_default_value = 0.0
    end

    it "calculates the number" do
      expect(subject.number).to eql(0.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(nil)
    end

    it "calculates the median" do
      expect(subject.median).to eql(nil)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(0.0)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(nil)
    end

    it "calculates the percentile" do
      expect(subject.percentile(30)).to eql(nil)
      expect(subject.percentile(50)).to eql(nil)
      expect(subject.percentile(70)).to eql(nil)
    end

    it "calculates the same value for the 50th percentile and median" do
      expect(subject.percentile(50)).to eql(subject.median)
    end

    it "does not calculate a mode" do
      expect(subject.mode).to eql(nil)
    end

    it "calculates the range" do
      expect(subject.range).to eql(nil)
    end

    it "calculates the percentile rank" do
      expect(subject.percentile_rank(8)).to eql(nil)
    end

  end

end