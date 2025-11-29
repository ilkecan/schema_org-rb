module SchemaOrg
  # https://schema.org/SoftwareSourceCode
  #
  # Computer programming source code. Example: Full (compile ready) solutions, code snippet samples, scripts, templates.
  class SoftwareSourceCode < Base
    include Mixins::SoftwareSourceCode
  end
end
