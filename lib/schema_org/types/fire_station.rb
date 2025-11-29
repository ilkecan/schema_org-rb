module SchemaOrg
  # https://schema.org/FireStation
  #
  # A fire station. With firemen.
  class FireStation < Base
    include Mixins::FireStation
  end
end
