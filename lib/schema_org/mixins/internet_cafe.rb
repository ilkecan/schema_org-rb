require "active_support/concern"

module SchemaOrg
  module Mixins
    module InternetCafe
      extend ActiveSupport::Concern

      include LocalBusiness
    end
  end
end
