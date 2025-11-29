module SchemaOrg
  # https://schema.org/Cemetery
  #
  # A graveyard.
  class Cemetery < Base
    include Mixins::Cemetery
  end
end
