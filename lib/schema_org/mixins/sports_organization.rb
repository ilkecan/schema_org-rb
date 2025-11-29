require "active_support/concern"

module SchemaOrg
  module Mixins
    module SportsOrganization
      extend ActiveSupport::Concern

      include Organization

      included do
        option :sport # A type of sport (e.g. Baseball).
      end
    end
  end
end
