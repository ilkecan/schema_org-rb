require "active_support/concern"

module SchemaOrg
  module Mixins
    module Language
      extend ActiveSupport::Concern

      include Intangible
    end
  end
end
