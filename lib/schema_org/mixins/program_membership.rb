require "active_support/concern"

module SchemaOrg
  module Mixins
    module ProgramMembership
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :hosting_organization # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
        option :members # A member of this organization.
        option :membership_number # A unique identifier for the membership.
        option :program_name # The program providing the membership. It is preferable to use [:program](https://schema.org/program) instead.
        option :member # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
      end
    end
  end
end
