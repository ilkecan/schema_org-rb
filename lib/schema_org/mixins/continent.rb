require "active_support/concern"

module SchemaOrg
  module Mixins
    module Continent
      extend ActiveSupport::Concern

      include Landform
    end
  end
end
