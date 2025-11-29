module SchemaOrg
  # https://schema.org/BedType
  #
  # A type of bed. This is used for indicating the bed or beds available in an accommodation.
  class BedType < Base
    include Mixins::BedType
  end
end
