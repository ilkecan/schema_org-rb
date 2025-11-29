module SchemaOrg
  # https://schema.org/AdultEntertainment
  #
  # An adult entertainment establishment.
  class AdultEntertainment < Base
    include Mixins::AdultEntertainment
  end
end
