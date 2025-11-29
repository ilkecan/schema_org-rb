require "active_support/concern"

module SchemaOrg
  module Mixins
    module PublicationIssue
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :issue_number # Identifies the issue of publication; for example, "iii" or "2".
        option :page_end # The page on which the work ends; for example "138" or "xvi".
        option :page_start # The page on which the work starts; for example "135" or "xiii".
        option :pagination # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
      end
    end
  end
end
