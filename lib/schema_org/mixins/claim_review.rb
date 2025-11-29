require "active_support/concern"

module SchemaOrg
  module Mixins
    module ClaimReview
      extend ActiveSupport::Concern

      include Review

      included do
        option :claim_reviewed # A short summary of the specific claims reviewed in a ClaimReview.
      end
    end
  end
end
