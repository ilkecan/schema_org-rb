module SchemaOrg
  # https://schema.org/SkiResort
  #
  # A ski resort.
  class SkiResort < Base
    include Mixins::SkiResort
  end
end
