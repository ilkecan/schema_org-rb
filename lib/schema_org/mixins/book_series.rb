require "active_support/concern"

module SchemaOrg
  module Mixins
    module BookSeries
      extend ActiveSupport::Concern

      include CreativeWorkSeries
    end
  end
end
