require "active_support/concern"

module SchemaOrg
  module Mixins
    module Permit
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :issued_by, optional: true # The organization issuing the item, for example a [[Permit]], [[Ticket]], or [[Certification]].
        option :issued_through, optional: true # The service through which the permit was granted.
        option :permit_audience, optional: true # The target audience for this permit.
        option :valid_for, optional: true # The duration of validity of a permit or similar thing.
        option :valid_from, optional: true # The date when the item becomes valid.
        option :valid_in, optional: true # The geographic area where the item is valid. Applies for example to a [[Permit]], a [[Certification]], or an [[EducationalOccupationalCredential]].
        option :valid_until, optional: true # The date when the item is no longer valid.
      end
    end
  end
end
