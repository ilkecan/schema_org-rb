require "active_support/concern"

module SchemaOrg
  module Mixins
    module Role
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :end_date # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :named_position # A position played, performed or filled by a person or organization, as part of an organization. For example, an athlete in a SportsTeam might play in the position named 'Quarterback'. Superseded by `role_name`.
        option :start_date # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :role_name # A role played, performed or filled by a person or organization. For example, the team of creators for a comic book might fill the roles named 'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might play in the position named 'Quarterback'. Supersedes `named_position`.
      end
    end
  end
end
