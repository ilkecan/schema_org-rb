module SchemaOrg
  # https://schema.org/State
  #
  # A state or province of a country.
  class State < Base
    include Mixins::State
  end
end
