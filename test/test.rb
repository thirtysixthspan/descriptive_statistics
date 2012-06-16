require 'minitest/autorun'
require 'csv'
require './lib/descriptive_statistics'

class TestData < MiniTest::Unit::TestCase
  
  def setup
    @data = []
    CSV.foreach("test/testdata.csv") do |row|
      @data.push row.map(&:to_f)
    end
  end

  def test_sum
    @data.each do |test_case|
      assert_equal test_case[0,10].sum.round(6), test_case[10].round(6)
    end  
  end

  def test_mean
    @data.each do |test_case|
      assert_equal test_case[0,10].mean.round(6), test_case[11].round(6)
    end  
  end
  
  def test_median
    @data.each do |test_case|
      assert_equal test_case[0,10].median.round(6), test_case[12].round(6)
    end  
  end

  def test_variance
    @data.each do |test_case|
      assert_equal test_case[0,10].variance.round(6), test_case[13].round(6)
    end  
  end
  
  def test_standard_deviation
    @data.each do |test_case|
      assert_equal test_case[0,10].standard_deviation.round(6), test_case[14].round(6)
    end  
  end

  def test_percentile
    @data.each do |test_case|
      assert_equal test_case[0,10].percentile(0).round(6), test_case[15].round(6)
      assert_equal test_case[0,10].percentile(10).round(6), test_case[16].round(6)
      assert_equal test_case[0,10].percentile(20).round(6), test_case[17].round(6)
      assert_equal test_case[0,10].percentile(30).round(6), test_case[18].round(6)
      assert_equal test_case[0,10].percentile(40).round(6), test_case[19].round(6)
      assert_equal test_case[0,10].percentile(50).round(6), test_case[20].round(6)
      assert_equal test_case[0,10].percentile(60).round(6), test_case[21].round(6)
      assert_equal test_case[0,10].percentile(70).round(6), test_case[22].round(6)
      assert_equal test_case[0,10].percentile(80).round(6), test_case[23].round(6)
      assert_equal test_case[0,10].percentile(90).round(6), test_case[24].round(6)
      assert_equal test_case[0,10].percentile(100).round(6), test_case[25].round(6)
    end  
  end
    
end