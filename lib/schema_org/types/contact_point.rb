module SchemaOrg
  # https://schema.org/ContactPoint
  #
  # A contact point&#x2014;for example, a Customer Complaints department.
  class ContactPoint < Base
    include Mixins::ContactPoint
  end
end
