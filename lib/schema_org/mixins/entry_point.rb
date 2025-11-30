require "active_support/concern"

module SchemaOrg
  module Mixins
    module EntryPoint
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :action_platform, optional: true # The high level platform(s) where the Action can be performed for the given URL. To specify a specific application or operating system instance, use actionApplication.
        option :application, optional: true # An application that can complete the request. Superseded by `action_application`.
        option :content_type, optional: true # The supported content type(s) for an EntryPoint response.
        option :encoding_type, optional: true # The supported encoding type(s) for an EntryPoint request.
        option :http_method, optional: true # An HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint. Values are capitalized strings as used in HTTP.
        option :url_template, optional: true # An url template (RFC6570) that will be used to construct the target of the execution of the action.
        option :action_application, optional: true # An application that can complete the request. Supersedes `application`.
      end
    end
  end
end
