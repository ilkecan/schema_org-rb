require "active_support/concern"

module SchemaOrg
  module Mixins
    module GovernmentOffice
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
