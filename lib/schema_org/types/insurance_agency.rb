module SchemaOrg
  # https://schema.org/InsuranceAgency
  #
  # An Insurance agency.
  class InsuranceAgency < Base
    include Mixins::InsuranceAgency
  end
end
