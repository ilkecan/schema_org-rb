require "active_support/concern"

module SchemaOrg
  module Mixins
    module GatedResidenceCommunity
      extend ActiveSupport::Concern

      include Residence
    end
  end
end
