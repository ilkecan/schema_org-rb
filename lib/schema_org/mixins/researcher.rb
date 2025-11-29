require "active_support/concern"

module SchemaOrg
  module Mixins
    module Researcher
      extend ActiveSupport::Concern

      include Audience
    end
  end
end
