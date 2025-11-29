require "active_support/concern"

module SchemaOrg
  module Mixins
    module FMRadioChannel
      extend ActiveSupport::Concern

      include RadioChannel
    end
  end
end
