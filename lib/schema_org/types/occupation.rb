module SchemaOrg
  # https://schema.org/Occupation
  #
  # A profession, may involve prolonged training and/or a formal qualification.
  class Occupation < Base
    include Mixins::Occupation
  end
end
