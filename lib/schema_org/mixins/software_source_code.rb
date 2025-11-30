require "active_support/concern"

module SchemaOrg
  module Mixins
    module SoftwareSourceCode
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :code_repository, optional: true # Link to the repository where the un-compiled, human readable code and related code is located (SVN, GitHub, CodePlex).
        option :programming_language, optional: true # The computer programming language.
        option :runtime, optional: true # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0). Superseded by `runtime_platform`.
        option :sample_type, optional: true # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template. Superseded by `code_sample_type`.
        option :target_product, optional: true # Target Operating System / Product to which the code applies.  If applies to several versions, just the product name can be used.
        option :code_sample_type, optional: true # What type of code sample: full (compile ready) solution, code snippet, inline code, scripts, template. Supersedes `sample_type`.
        option :runtime_platform, optional: true # Runtime platform or script interpreter dependencies (example: Java v1, Python 2.3, .NET Framework 3.0). Supersedes `runtime`.
      end
    end
  end
end
