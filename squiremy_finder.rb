class SquiremyFinder
  def initialize(chromosone_string)
    @chromosone = chromosone_string
  end

  def find_squiremy
    if find_head && find_body
      true
    else
      false
    end
  end

  def find_head
    if find_globe && find_eye_spots
      true
    else
      false
    end
  end

  def find_body
    if find_globe && find_legs
      true
    else
      false
    end
  end

  def find_globe
    find_attribute(/(A+(TAC|CAT)A)/)
  end

  def find_eye_spots
    find_attribute(/T(CG*T)*AG/)
  end

  def find_legs
    find_attribute(/CG*T/)
  end

  def find_attribute(regex)
    attribute = @chromosone.match(regex)
    if attribute
      delete_up_to attribute[0]
      true
    else
      false
    end
  end

  def delete_up_to(string)
    @chromosone.slice!(string)
  end
end
