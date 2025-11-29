require "active_support/concern"

module SchemaOrg
  module Mixins
    module CatholicChurch
      extend ActiveSupport::Concern

      include Church
    end
  end
end
