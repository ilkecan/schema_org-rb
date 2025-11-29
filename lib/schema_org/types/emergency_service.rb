module SchemaOrg
  # https://schema.org/EmergencyService
  #
  # An emergency service, such as a fire station or ER.
  class EmergencyService < Base
    include Mixins::EmergencyService
  end
end
