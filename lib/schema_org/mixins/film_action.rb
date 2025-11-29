require "active_support/concern"

module SchemaOrg
  module Mixins
    module FilmAction
      extend ActiveSupport::Concern

      include CreateAction
    end
  end
end
