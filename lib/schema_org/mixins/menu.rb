require "active_support/concern"

module SchemaOrg
  module Mixins
    module Menu
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :has_menu_item, optional: true # A food or drink item contained in a menu or menu section.
        option :has_menu_section, optional: true # A subgrouping of the menu (by dishes, course, serving time period, etc.).
      end
    end
  end
end
