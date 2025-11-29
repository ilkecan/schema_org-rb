require "active_support/concern"

module SchemaOrg
  module Mixins
    module AMRadioChannel
      extend ActiveSupport::Concern

      include RadioChannel
    end
  end
end
