require "active_support/concern"

module SchemaOrg
  module Mixins
    module PostalAddress
      extend ActiveSupport::Concern

      include ContactPoint

      included do
        option :address_country, optional: true # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
        option :address_locality, optional: true # The locality in which the street address is, and which is in the region. For example, Mountain View.
        option :address_region, optional: true # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country).
        option :extended_address, optional: true # An address extension such as an apartment number, C/O or alternative name.
        option :post_office_box_number, optional: true # The post office box number for PO box addresses.
        option :postal_code, optional: true # The postal code. For example, 94043.
        option :street_address, optional: true # The street address. For example, 1600 Amphitheatre Pkwy.
      end
    end
  end
end
