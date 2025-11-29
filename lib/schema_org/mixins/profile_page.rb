require "active_support/concern"

module SchemaOrg
  module Mixins
    module ProfilePage
      extend ActiveSupport::Concern

      include WebPage
    end
  end
end
