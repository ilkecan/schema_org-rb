require "active_support/concern"

module SchemaOrg
  module Mixins
    module ProgramMembership
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :hosting_organization, optional: true # The Organization (airline, travelers' club, retailer, etc.) the membership is made with or which offers the  MemberProgram.
        option :members, optional: true # A member of this organization. Superseded by `member`.
        option :membership_number, optional: true # A unique identifier for the membership.
        option :program_name, optional: true # The program providing the membership. It is preferable to use [:program](https://schema.org/program) instead.
        option :member, optional: true # A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals. Supersedes `music_group_member`. Inverse-property: `member_of`.
      end
    end
  end
end
