require "active_support/concern"

module SchemaOrg
  module Mixins
    module Landform
      extend ActiveSupport::Concern

      include Place
    end
  end
end
