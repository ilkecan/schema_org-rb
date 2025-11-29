require "active_support/concern"

module SchemaOrg
  module Mixins
    module SoftwareSourceCode
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :code_repository # Link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex).
        option :programming_language # The computer programming language.
        option :runtime # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
        option :sample_type # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
        option :target_product # Target Operating System / Product to which the code applies.  If applies to several versions, just the product name can be used.
        option :code_sample_type # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template.
        option :runtime_platform # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0).
      end
    end
  end
end
