require 'rspec'
require_relative '../squiremy_finder'

describe SquiremyFinder do
  it "should find a squiremy" do
    analyzer = SquiremyFinder.new("ACATATAGACATACGT")
    result = analyzer.find_squiremy

    result.should be true
  end

  it "shouldn't find a squiremy" do
    analyzer = SquiremyFinder.new("AAAAAATACATAGTAGTCGGGTAG")
    result = analyzer.find_squiremy

    result.should be false
  end

  it "shouldn't find a squiremy" do
    analyzer = SquiremyFinder.new("ATACATCGGGTAGCGT")
    result = analyzer.find_squiremy

    result.should be false
  end
end
