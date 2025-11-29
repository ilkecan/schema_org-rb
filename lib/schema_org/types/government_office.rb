module SchemaOrg
  # https://schema.org/GovernmentOffice
  #
  # A government office&#x2014;for example, an IRS or DMV office.
  class GovernmentOffice < Base
    include Mixins::GovernmentOffice
  end
end
