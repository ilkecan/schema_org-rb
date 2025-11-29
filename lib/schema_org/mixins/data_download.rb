require "active_support/concern"

module SchemaOrg
  module Mixins
    module DataDownload
      extend ActiveSupport::Concern

      include MediaObject
    end
  end
end
