require "active_support/concern"

module SchemaOrg
  module Mixins
    module PoliticalParty
      extend ActiveSupport::Concern

      include Organization
    end
  end
end
