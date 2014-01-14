require 'rspec'
require_relative '../squiremies_finder'

describe SquiremiesFinder do
  it "should find some squiremies" do

    input = "3
ACATATAGACATACGT
AAAAAATACATAGTAGTCGGGTAG
ATACATCGGGTAGCGT"

    analyzer = SquiremiesFinder.new(input)

    result = analyzer.find_squiremies

    result.should eq("SQUIRMY OUTPUT
Case 1: YES
Case 2: NO
Case 3: NO
END OF OUTPUT")
  end
end
