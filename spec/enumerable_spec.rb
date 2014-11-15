require 'rspec'

describe "DescriptiveStatistics" do
  require 'descriptive_statistics'

  class Foo
    include Enumerable
    attr_accessor :bar, :baz, :bat

    def each
      Enumerator.new do |y|
        y << @bar
        y << @baz
        y << @bat
      end
    end
  end

  subject { Foo.new }

  context "with a class that includes Enumerable" do

    it "responds to all statistics methods" do
      DescriptiveStatistics.instance_methods.each do |method|
        expect(subject).respond_to? method
      end
    end

    it "calculates statistics" do
      subject.bar = 1
      subject.baz = 2
      subject.bat = 3
      expect(subject.mean).to eql(2.0)
    end

  end

end
