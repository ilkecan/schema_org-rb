module SchemaOrg
  # https://schema.org/FAQPage
  #
  # A [[FAQPage]] is a [[WebPage]] presenting one or more "[Frequently asked questions](https://en.wikipedia.org/wiki/FAQ)" (see also [[QAPage]]).
  class FAQPage < Base
    include Mixins::FAQPage
  end
end
