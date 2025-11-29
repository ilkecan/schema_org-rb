require "active_support/concern"

module SchemaOrg
  module Mixins
    module ApartmentComplex
      extend ActiveSupport::Concern

      include Residence
    end
  end
end
