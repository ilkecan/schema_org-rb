require "active_support/concern"

module SchemaOrg
  module Mixins
    module Permit
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :issued_by # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
        option :issued_through # The service through which the permit was granted.
        option :permit_audience # The target audience for this permit.
        option :valid_for # The duration of validity of a permit or similar thing.
        option :valid_from # The date when the item becomes valid.
        option :valid_in # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
        option :valid_until # The date when the item is no longer valid.
      end
    end
  end
end
