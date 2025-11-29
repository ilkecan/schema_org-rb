module SchemaOrg
  # https://schema.org/House
  #
  # A house is a building or structure that has the ability to be occupied for habitation by humans or other creatures (source: Wikipedia, the free encyclopedia, see <a href="http://en.wikipedia.org/wiki/House">http://en.wikipedia.org/wiki/House</a>).
  class House < Base
    include Mixins::House
  end
end
