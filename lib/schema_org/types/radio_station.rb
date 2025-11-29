module SchemaOrg
  # https://schema.org/RadioStation
  #
  # A radio station.
  class RadioStation < Base
    include Mixins::RadioStation
  end
end
