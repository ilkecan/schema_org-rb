require "active_support/concern"

module SchemaOrg
  module Mixins
    module CampingPitch
      extend ActiveSupport::Concern

      include Accommodation
    end
  end
end
