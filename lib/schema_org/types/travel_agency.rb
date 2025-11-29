module SchemaOrg
  # https://schema.org/TravelAgency
  #
  # A travel agency.
  class TravelAgency < Base
    include Mixins::TravelAgency
  end
end
