require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicVenue
      extend ActiveSupport::Concern

      include CivicStructure
    end
  end
end
