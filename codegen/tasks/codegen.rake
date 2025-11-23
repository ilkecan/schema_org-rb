desc 'Generate Ruby files from the schema.ttl'
task :codegen do
  require './codegen/lib/schema_org'

  parser = SchemaOrg::Codegen::Parser.new
  parser.classes.each do
    generator = SchemaOrg::Codegen::Generator.new(subject: it)
    generator.generate :type
    generator.generate :class
  end
end
