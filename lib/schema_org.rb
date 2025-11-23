require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

module SchemaOrg
  module Types
  end

  private_constant :Types
end
