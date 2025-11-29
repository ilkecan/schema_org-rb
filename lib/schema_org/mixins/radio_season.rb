require "active_support/concern"

module SchemaOrg
  module Mixins
    module RadioSeason
      extend ActiveSupport::Concern

      include CreativeWorkSeason
    end
  end
end
