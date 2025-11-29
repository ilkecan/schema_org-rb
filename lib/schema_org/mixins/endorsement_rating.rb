require "active_support/concern"

module SchemaOrg
  module Mixins
    module EndorsementRating
      extend ActiveSupport::Concern

      include Rating
    end
  end
end
