module SchemaOrg
  # https://schema.org/RealEstateAgent
  #
  # A real-estate agent.
  class RealEstateAgent < Base
    include Mixins::RealEstateAgent
  end
end
