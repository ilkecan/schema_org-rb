require "active_support/concern"

module SchemaOrg
  module Mixins
    module Specialty
      extend ActiveSupport::Concern

      include Enumeration
    end
  end
end
