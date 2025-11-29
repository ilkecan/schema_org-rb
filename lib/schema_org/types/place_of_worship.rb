module SchemaOrg
  # https://schema.org/PlaceOfWorship
  #
  # Place of worship, such as a church, synagogue, or mosque.
  class PlaceOfWorship < Base
    include Mixins::PlaceOfWorship
  end
end
