module SchemaOrg
  # https://schema.org/Intangible
  #
  # A utility class that serves as the umbrella for a number of 'intangible' things such as quantities, structured values, etc.
  class Intangible < Base
    include Mixins::Intangible
  end
end
