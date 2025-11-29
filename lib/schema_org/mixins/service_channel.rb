require "active_support/concern"

module SchemaOrg
  module Mixins
    module ServiceChannel
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :available_language # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
        option :processing_time # Estimated processing time for the service using this channel.
        option :provides_service # The service provided by this channel.
        option :service_location # The location (e.g. civic structure, local business, etc.) where a person can go to access the service.
        option :service_phone # The phone number to use to access the service.
        option :service_postal_address # The address for accessing the service by mail.
        option :service_sms_number # The number to access the service by text message.
        option :service_url # The website to access the service.
      end
    end
  end
end
