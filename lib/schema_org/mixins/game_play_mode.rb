require "active_support/concern"

module SchemaOrg
  module Mixins
    module GamePlayMode
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
