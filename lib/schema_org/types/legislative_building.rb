module SchemaOrg
  # https://schema.org/LegislativeBuilding
  #
  # A legislative building&#x2014;for example, the state capitol.
  class LegislativeBuilding < Base
    include Mixins::LegislativeBuilding
  end
end
