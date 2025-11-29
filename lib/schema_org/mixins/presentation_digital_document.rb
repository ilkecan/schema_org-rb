require "active_support/concern"

module SchemaOrg
  module Mixins
    module PresentationDigitalDocument
      extend ActiveSupport::Concern

      include DigitalDocument
    end
  end
end
