require "active_support/concern"

module SchemaOrg
  module Mixins
    module Residence
      extend ActiveSupport::Concern

      include Place
    end
  end
end
