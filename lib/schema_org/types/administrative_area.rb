module SchemaOrg
  # https://schema.org/AdministrativeArea
  #
  # A geographical region, typically under the jurisdiction of a particular government.
  class AdministrativeArea < Base
    include Mixins::AdministrativeArea
  end
end
