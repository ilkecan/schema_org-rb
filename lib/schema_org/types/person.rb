module SchemaOrg
  # https://schema.org/Person
  #
  # A person (alive, dead, undead, or fictional).
  class Person < Base
    include Mixins::Person
  end
end
