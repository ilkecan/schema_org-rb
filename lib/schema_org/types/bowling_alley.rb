module SchemaOrg
  # https://schema.org/BowlingAlley
  #
  # A bowling alley.
  class BowlingAlley < Base
    include Mixins::BowlingAlley
  end
end
