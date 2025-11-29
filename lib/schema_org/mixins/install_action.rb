require "active_support/concern"

module SchemaOrg
  module Mixins
    module InstallAction
      extend ActiveSupport::Concern

      include ConsumeAction
    end
  end
end
