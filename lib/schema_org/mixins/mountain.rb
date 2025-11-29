require "active_support/concern"

module SchemaOrg
  module Mixins
    module Mountain
      extend ActiveSupport::Concern

      include Landform
    end
  end
end
