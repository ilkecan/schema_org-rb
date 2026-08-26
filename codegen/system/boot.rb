require "pathname"
require "json"
require "rdf/turtle"
require "tilt"

class String
  def underscore
    gsub(/::/, "/").gsub(/([A-Z]+)([A-Z][a-z])/, '\\1_\\2').gsub(/([a-z\\d])([A-Z])/, '\\1_\\2').tr("-", "_").downcase
  end
end

require_relative "container"
require_relative "import"
Dir[File.expand_path("../lib/schema_org/codegen/**/*.rb", __dir__)].sort.each { |file| require file }
App.finalize!
