module SchemaOrg
  # https://schema.org/ServiceChannel
  #
  # A means for accessing a service, e.g. a government office location, web site, or phone number.
  class ServiceChannel < Base
    include Mixins::ServiceChannel
  end
end
