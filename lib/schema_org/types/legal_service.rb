module SchemaOrg
  # https://schema.org/LegalService
  #
  # A LegalService is a business that provides legally-oriented services, advice and representation, e.g. law firms.\n\nAs a [[LocalBusiness]] it can be described as a [[provider]] of one or more [[Service]]\(s).
  class LegalService
    include Mixins::LegalService
  end
end
