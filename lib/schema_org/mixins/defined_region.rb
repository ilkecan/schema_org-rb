require "active_support/concern"

module SchemaOrg
  module Mixins
    module DefinedRegion
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :address_country, optional: true # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
        option :address_region, optional: true # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country).
        option :postal_code, optional: true # The postal code. For example, 94043.
        option :postal_code_prefix, optional: true # A defined range of postal codes indicated by a common textual prefix. Used for non-numeric systems such as UK.
        option :postal_code_range, optional: true # A defined range of postal codes.
      end
    end
  end
end
