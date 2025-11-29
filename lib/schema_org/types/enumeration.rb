module SchemaOrg
  # https://schema.org/Enumeration
  #
  # Lists or enumerations—for example, a list of cuisines or music genres, etc.
  class Enumeration < Base
    include Mixins::Enumeration
  end
end
