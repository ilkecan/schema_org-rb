desc 'Generate Ruby files from the schema.ttl'
task :codegen do
  require "./codegen/system/boot"

  generator = App['generator']
  parser = App['parser']

  parser.classes.each do
    generator.generate SchemaOrg::Codegen::DataModels::Mixin.from_subject(it)
    generator.generate SchemaOrg::Codegen::DataModels::Type.from_subject(it)
  end
  generator.generate SchemaOrg::Codegen::DataModels::SchemaVersion.current
end
