module SchemaOrg
  # https://schema.org/HowToTool
  #
  # A tool used (but not consumed) when performing instructions for how to achieve a result.
  class HowToTool < Base
    include Mixins::HowToTool
  end
end
