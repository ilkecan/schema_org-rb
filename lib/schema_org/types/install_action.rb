module SchemaOrg
  # https://schema.org/InstallAction
  #
  # The act of installing an application.
  class InstallAction < Base
    include Mixins::InstallAction
  end
end
