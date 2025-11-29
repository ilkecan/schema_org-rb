module SchemaOrg
  # https://schema.org/PoliticalParty
  #
  # Organization: Political Party.
  class PoliticalParty < Base
    include Mixins::PoliticalParty
  end
end
