module SchemaOrg
  # https://schema.org/Place
  #
  # Entities that have a somewhat fixed, physical extension.
  class Place < Base
    include Mixins::Place
  end
end
