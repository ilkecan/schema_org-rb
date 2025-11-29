module SchemaOrg
  # https://schema.org/Museum
  #
  # A museum.
  class Museum < Base
    include Mixins::Museum
  end
end
