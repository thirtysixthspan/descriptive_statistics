require 'monkeypatch/spec_helper'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  subject { {:a=>2,:b=>6,:c=>9,:d=>3,:e=>5,:f=>1,:g=>8,:h=>3,:i=>6,:j=>9,:k=>2} }

  context "with a hash" do

    it "responds to all statistics methods" do
      DescriptiveStatistics.instance_methods.each do |method|
        expect(subject).respond_to? method
      end
    end

    it "calculates the number" do
      expect(subject.number).to eql(11.0)
    end

    it "calculates the sum" do
      expect(subject.sum).to eql(54.0)
    end

    it "calculates the mean" do
      expect(subject.mean).to eql(4.909090909090909)
    end

    it "calculates the median" do
      expect(subject.median).to eql(5.0)
    end

    it "calculates the variance" do
      expect(subject.variance).to eql(8.49090909090909)
    end

    it "calculates the standard_deviation" do
      expect(subject.standard_deviation).to eql(2.91391645228704)
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
