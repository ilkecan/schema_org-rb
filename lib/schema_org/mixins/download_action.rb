require "active_support/concern"

module SchemaOrg
  module Mixins
    module DownloadAction
      extend ActiveSupport::Concern

      include TransferAction
    end
  end
end
