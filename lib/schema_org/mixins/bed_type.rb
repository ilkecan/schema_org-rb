require "active_support/concern"

module SchemaOrg
  module Mixins
    module BedType
      extend ActiveSupport::Concern

      include QualitativeValue
    end
  end
end
