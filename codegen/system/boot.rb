require "pathname"
require "json"
require "rdf/turtle"
require "tilt"
require "active_support/inflector"

require_relative "container"
Dir[File.expand_path("../lib/schema_org/codegen/**/*.rb", __dir__)].sort.each { |file| require file }
App.finalize!
