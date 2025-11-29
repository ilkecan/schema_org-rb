require "active_support/concern"

module SchemaOrg
  module Mixins
    module DayOfWeek
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
