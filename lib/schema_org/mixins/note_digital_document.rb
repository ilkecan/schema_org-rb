require "active_support/concern"

module SchemaOrg
  module Mixins
    module NoteDigitalDocument
      extend ActiveSupport::Concern

      include DigitalDocument
    end
  end
end
