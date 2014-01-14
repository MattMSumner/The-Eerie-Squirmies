require_relative './squiremy_finder'

class SquiremiesFinder
  def initialize(chromosome_input)
    @chromosome_input = chromosome_input
  end

  def find_squiremies
    output = chromosomes.each_with_index.map do |chromosome, index|
      if squiremies_detected? chromosome
        "Case #{index + 1}: YES"
      else
        "Case #{index + 1}: NO"
      end
    end

    "SQUIRMY OUTPUT\n" + output.join("\n") + "\nEND OF OUTPUT"
  end

  def chromosomes
    @chromosome_input.split("\n")[1..-1]
  end

  def squiremies_detected?(chromosone_string)
    SquiremyFinder.new(chromosone_string).find_squiremy
  end
end
