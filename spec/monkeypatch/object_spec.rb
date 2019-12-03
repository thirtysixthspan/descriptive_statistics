require 'monkeypatch/spec_helper'
require 'ostruct'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  subject {
    [
      OpenStruct.new( price: 2.5, quantity: 2 ),
      OpenStruct.new( price: 5.1, quantity: 9 ),
      OpenStruct.new( price: 5.7, quantity: 4 ),
      OpenStruct.new( price: 0.5, quantity: 10 )
    ]
  }

  context "with an array of objects" do

    context "called with a method turned block" do

      it "calculates the number" do
        expect(subject.number(&:price)).to eql(4.0)
      end

      it "calculates the mean" do
        expect(subject.mean(&:price)).to eql(3.45)
      end

      it "calculates the median" do
        expect(subject.median(&:price)).to eql(3.8)
      end

      it "calculates the variance" do
        expect(subject.variance(&:price)).to eql(4.3475)
      end

      it "calculates the standard_deviation" do
        expect(subject.standard_deviation(&:price)).to eql(2.0850659461993044)
      end

      it "calculates the percentile" do
        expect(subject.percentile(30, &:price)).to eql(2.3)
        expect(subject.percentile(50, &:price)).to eql(3.8)
        expect(subject.percentile(70, &:price)).to eql(5.159999999999999)
      end

      it "calculates the same value for the 50th percentile and median" do
        expect(subject.percentile(50, &:price)).to eql(subject.median(&:price))
      end

      it "calculates the mode" do
        expect(subject.mode(&:price)).to eql(2.5)
      end

      it "calculates the range" do
        expect(subject.range(&:price)).to eql(5.2)
      end

      it "calculates the percentile rank" do
        expect(subject.percentile_rank(8, &:price)).to eql(100.0)
      end

    end

    context "called with a block" do

      it "calculates the number" do
        expect(subject.number{|v| v.price * v.quantity}).to eql(4.0)
      end

      it "calculates the mean" do
        expect(subject.mean{|v| v.price * v.quantity}).to eql(19.675)
      end

      it "calculates the median" do
        expect(subject.median{|v| v.price * v.quantity}).to eql(13.9)
      end

      it "calculates the variance" do
        expect(subject.variance{|v| v.price * v.quantity}).to eql(282.056875)
      end

      it "calculates the standard_deviation" do
        expect(subject.standard_deviation{|v| v.price * v.quantity}).to eql(16.79454896685231)
      end

      it "calculates the percentile" do
        expect(subject.percentile(30){|v| v.price * v.quantity}).to eql(5.0)
        expect(subject.percentile(50){|v| v.price * v.quantity}).to eql(13.9)
        expect(subject.percentile(70){|v| v.price * v.quantity}).to eql(25.109999999999992)
      end

      it "calculates the same value for the 50th percentile and median" do
        expect(subject.percentile(50){|v| v.price * v.quantity}).to eql(subject.median{|v| v.price * v.quantity})
      end

      it "calculates the mode" do
        expect(subject.mode{|v| v.price * v.quantity}).to eql(5.0)
      end

      it "calculates the range" do
        expect(subject.range{|v| v.price * v.quantity}).to eql(40.9)
      end

      it "calculates the percentile rank" do
        expect(subject.percentile_rank(8){|v| v.price * v.quantity}).to eql(50.0)
      end

    end
   end

end