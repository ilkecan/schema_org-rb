module SchemaOrg
  # https://schema.org/BroadcastFrequencySpecification
  #
  # The frequency in MHz and the modulation used for a particular BroadcastService.
  class BroadcastFrequencySpecification < Base
    include Mixins::BroadcastFrequencySpecification
  end
end
