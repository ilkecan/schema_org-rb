require "active_support/concern"

module SchemaOrg
  module Mixins
    module Audience
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :audience_type # The target group associated with a given audience (e.g. veterans, car owners, musicians, etc.).
        option :geographic_area # The geographic area associated with the audience.
      end
    end
  end
end
