require "active_support/concern"

module SchemaOrg
  module Mixins
    module PublicationVolume
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :page_end, optional: true # The page on which the work ends; for example "138" or "xvi".
        option :page_start, optional: true # The page on which the work starts; for example "135" or "xiii".
        option :pagination, optional: true # Any description of pages that is not separated into pageStart and pageEnd; for example, "1-6, 9, 55" or "10-12, 46-49".
        option :volume_number, optional: true # Identifies the volume of publication or multi-part work; for example, "iii" or "2".
      end
    end
  end
end
