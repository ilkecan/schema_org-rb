desc 'Generate Ruby files from the schema.ttl'
task :codegen do
  require "./codegen/system/boot"

  App['parser'].classes.each do
    generator = SchemaOrg::Codegen::Generator.new(subject: it)
    generator.generate :mixin
    generator.generate :type
  end
end
