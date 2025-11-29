module SchemaOrg
  # https://schema.org/TechArticle
  #
  # A technical article - Example: How-to (task) topics, step-by-step, procedural troubleshooting, specifications, etc.
  class TechArticle < Base
    include Mixins::TechArticle
  end
end
