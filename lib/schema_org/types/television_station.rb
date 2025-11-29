module SchemaOrg
  # https://schema.org/TelevisionStation
  #
  # A television station.
  class TelevisionStation < Base
    include Mixins::TelevisionStation
  end
end
