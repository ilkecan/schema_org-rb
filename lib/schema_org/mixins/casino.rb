require "active_support/concern"

module SchemaOrg
  module Mixins
    module Casino
      extend ActiveSupport::Concern

      include EntertainmentBusiness
    end
  end
end
