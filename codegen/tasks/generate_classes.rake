namespace :codegen do
  desc 'Generate classes from the schema.ttl'
  task :classes do
    require './codegen/lib/schema_org'

    parser = SchemaOrg::Codegen::Parser.new
    generator = SchemaOrg::Codegen::Generator.new
    parser.classes.each { generator.generate_class it }
  end
end
