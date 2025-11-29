module SchemaOrg
  # https://schema.org/CreateAction
  #
  # The act of deliberately creating/producing/generating/building a result out of the agent.
  class CreateAction < Base
    include Mixins::CreateAction
  end
end
