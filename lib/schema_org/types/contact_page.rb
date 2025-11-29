module SchemaOrg
  # https://schema.org/ContactPage
  #
  # Web page type: Contact page.
  class ContactPage < Base
    include Mixins::ContactPage
  end
end
