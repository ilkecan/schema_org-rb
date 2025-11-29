require "active_support/concern"

module SchemaOrg
  module Mixins
    module CreativeWorkSeries
      extend ActiveSupport::Concern

      include CreativeWork
      include Series

      included do
        option :end_date # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
        option :issn # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
        option :start_date # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      end
    end
  end
end
