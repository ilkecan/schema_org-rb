module SchemaOrg
  # https://schema.org/PublicationIssue
  #
  # A part of a successively published publication such as a periodical or publication volume, often numbered, usually containing a grouping of works such as articles.\n\nSee also [blog post](https://blog-schema.org/2014/09/02/schema-org-support-for-bibliographic-relationships-and-periodicals/).
  class PublicationIssue
    include Mixins::PublicationIssue
  end
end
