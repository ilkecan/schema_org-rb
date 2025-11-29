require "active_support/concern"

module SchemaOrg
  module Mixins
    module SpreadsheetDigitalDocument
      extend ActiveSupport::Concern

      include DigitalDocument
    end
  end
end
