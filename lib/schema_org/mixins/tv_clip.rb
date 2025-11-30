require "active_support/concern"

module SchemaOrg
  module Mixins
    module TVClip
      extend ActiveSupport::Concern

      include Clip

      included do
        option :part_of_tv_series # The TV series to which this episode or season belongs. Superseded by `part_of_series`.
      end
    end
  end
end
