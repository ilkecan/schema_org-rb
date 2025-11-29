require "active_support/concern"

module SchemaOrg
  module Mixins
    module Room
      extend ActiveSupport::Concern

      include Accommodation
    end
  end
end
