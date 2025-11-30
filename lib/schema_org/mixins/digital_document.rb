require "active_support/concern"

module SchemaOrg
  module Mixins
    module DigitalDocument
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :has_digital_document_permission, optional: true # A permission related to the access to this document (e.g. permission to read or write an electronic document). For a public document, specify a grantee with an Audience with audienceType equal to "public".
      end
    end
  end
end
