require "active_support/concern"

module SchemaOrg
  module Mixins
    module ContactPoint
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :available_language, optional: true # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
        option :contact_option, optional: true # An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers).
        option :contact_type, optional: true # A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point.
        option :email, optional: true # Email address.
        option :fax_number, optional: true # The fax number.
        option :hours_available, optional: true # The hours during which this service or contact is available.
        option :product_supported, optional: true # The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. "iPhone") or a general category of products or services (e.g. "smartphones").
        option :telephone, optional: true # The telephone number.
        option :service_area, optional: true # The geographic area where the service is provided. Supersedes `area`. Superseded by `area_served`.
        option :area_served, optional: true # The geographic area where a service or offered item is provided. Supersedes `service_area`.
      end
    end
  end
end
