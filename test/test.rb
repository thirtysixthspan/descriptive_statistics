require 'simplecov'
require 'minitest'
require 'csv'
require './lib/descriptive_statistics'

SimpleCov.command_name 'minitest'

class TestData < Minitest::Test

  def setup
    @data = []
    CSV.foreach('test/testdata.csv') do |row|
      @data.push row.map(&:to_f)
    end
  end

  def test_sum
    @data.each do |test_case|
      assert_equal test_case[0, 10].sum.round(6), test_case[10].round(6)
    end
  end

  def test_mean
    @data.each do |test_case|
      assert_equal test_case[0, 10].mean.round(6), test_case[11].round(6)
    end
  end

  def test_median
    @data.each do |test_case|
      assert_equal test_case[0, 10].median.round(6), test_case[12].round(6)
    end
  end

  def test_variance
    @data.each do |test_case|
      assert_equal test_case[0, 10].variance.round(6), test_case[13].round(6)
    end
  end

  def test_standard_deviation
    @data.each do |test_case|
      assert_equal test_case[0, 10].standard_deviation.round(6), test_case[14].round(6)
    end
  end

  def test_percentile
    @data.each do |test_case|
      assert_equal test_case[0, 10].percentile(0).round(6), test_case[15].round(6)
      assert_equal test_case[0, 10].percentile(10).round(6), test_case[16].round(6)
      assert_equal test_case[0, 10].percentile(20).round(6), test_case[17].round(6)
      assert_equal test_case[0, 10].percentile(30).round(6), test_case[18].round(6)
      assert_equal test_case[0, 10].percentile(40).round(6), test_case[19].round(6)
      assert_equal test_case[0, 10].percentile(50).round(6), test_case[20].round(6)
      assert_equal test_case[0, 10].percentile(60).round(6), test_case[21].round(6)
      assert_equal test_case[0, 10].percentile(70).round(6), test_case[22].round(6)
      assert_equal test_case[0, 10].percentile(80).round(6), test_case[23].round(6)
      assert_equal test_case[0, 10].percentile(90).round(6), test_case[24].round(6)
      assert_equal test_case[0, 10].percentile(100).round(6), test_case[25].round(6)
    end
  end

  def test_percentile_rank
    @data.each do |test_case|
      assert_equal test_case[0, 10].percentile_rank(50).round(6), test_case[26].round(6)
    end
  end

  def test_percentile_rank_for_smallest_number
    assert_equal [2,3,4,5,6,7,8,9,10,11].percentile_rank(1), 0
    assert_equal [2,3,4,5,6,7,8,9,10,11].percentile_rank(2), 10
  end

  def test_mode
    assert_equal [1,3,6,9,4,5,2,3,4,1,6,7,8,3,2,3,5,7,8,5,6,5,6,5,4,5,5,5].mode, 5
  end

  def test_range
    assert_equal [17, 5, 3, 23, 33, 30, 45, 37].range, 42
    assert_equal [].range, nil
    assert_equal [1, 1.0].range, 0
  end

  def test_descriptive_statistics
    @data.each do |test_case|
      stat = test_case[0, 10].descriptive_statistics
      assert_equal test_case[0, 10].sum, stat[:sum]
      assert_equal test_case[0, 10].mean, stat[:mean]
      assert_equal test_case[0, 10].median, stat[:median]
      assert_equal test_case[0, 10].variance, stat[:variance]
      assert_equal test_case[0, 10].standard_deviation, stat[:standard_deviation]
      assert_equal test_case[0, 10].mode, stat[:mode]
      assert_equal test_case[0, 10].range, stat[:range]
      assert_equal test_case[0, 10].min, stat[:min]
      assert_equal test_case[0, 10].max, stat[:max]
      assert_equal test_case[0, 10].percentile(25), stat[:q1]
      assert_equal test_case[0, 10].percentile(50), stat[:q2]
      assert_equal test_case[0, 10].percentile(75), stat[:q3]
    end
  end

  def test_median_is_percentile50
    @data.each do |test_case|
      assert_equal test_case[0, 10].median, test_case[0, 10].percentile(50)
    end
  end
end
