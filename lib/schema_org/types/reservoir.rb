module SchemaOrg
  # https://schema.org/Reservoir
  #
  # A reservoir of water, typically an artificially created lake, like the Lake Kariba reservoir.
  class Reservoir < Base
    include Mixins::Reservoir
  end
end
