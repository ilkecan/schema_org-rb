require "active_support/concern"

module SchemaOrg
  module Mixins
    module APIReference
      extend ActiveSupport::Concern

      include TechArticle

      included do
        option :assembly # Library file name, e.g., mscorlib.dll, system.web.dll.
        option :assembly_version # Associated product/technology version. E.g., .NET Framework 4.5.
        option :programming_model # Indicates whether API is managed or unmanaged.
        option :target_platform # Type of app development: phone, Metro style, desktop, XBox, etc.
        option :executable_library_name # Library file name, e.g., mscorlib.dll, system.web.dll.
      end
    end
  end
end
