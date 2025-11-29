require "active_support/concern"

module SchemaOrg
  module Mixins
    module Volcano
      extend ActiveSupport::Concern

      include Landform
    end
  end
end
