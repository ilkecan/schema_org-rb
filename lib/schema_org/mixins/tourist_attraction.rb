require "active_support/concern"

module SchemaOrg
  module Mixins
    module TouristAttraction
      extend ActiveSupport::Concern

      include Place

      included do
        option :available_language, optional: true # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
        option :tourist_type, optional: true # Attraction suitable for type(s) of tourist. E.g. children, visitors from a particular country, etc.
      end
    end
  end
end
