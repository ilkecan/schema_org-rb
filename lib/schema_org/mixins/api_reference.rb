require "active_support/concern"

module SchemaOrg
  module Mixins
    module APIReference
      extend ActiveSupport::Concern

      include TechArticle

      included do
        option :assembly, optional: true # Library file name, e.g., mscorlib.dll, system.web.dll. Superseded by `executable_library_name`.
        option :assembly_version, optional: true # Associated product/technology version. E.g., .NET Framework 4.5.
        option :programming_model, optional: true # Indicates whether API is managed or unmanaged.
        option :target_platform, optional: true # Type of app development: phone, Metro style, desktop, XBox, etc.
        option :executable_library_name, optional: true # Library file name, e.g., mscorlib.dll, system.web.dll. Supersedes `assembly`.
      end
    end
  end
end
