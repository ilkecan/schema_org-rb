module SchemaOrg
  # https://schema.org/Code
  #
  # NOTE: Superseded by `SoftwareSourceCode`.
  #
  # Computer programming source code. Example: Full (compile ready) solutions, code snippet samples, scripts, templates.
  class Code < Base
    include Mixins::Code
  end
end
