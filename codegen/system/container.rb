class App
  def self.[](name)
    @instances ||= {}
    @instances[name] ||= case name.to_s
    when "subject.attributes" then SchemaOrg::Codegen::Subject::Attributes.new
    when "parser" then SchemaOrg::Codegen::Parser.new
    when "vocabulary" then SchemaOrg::Codegen::Vocabulary.new(parser: self["parser"])
    when "writer" then SchemaOrg::Codegen::Writer.new
    when "manifest" then SchemaOrg::Codegen::Manifest.new(writer: self["writer"])
    when "template_engine" then SchemaOrg::Codegen::TemplateEngine.new
    when "generator" then SchemaOrg::Codegen::Generator.new(manifest: self["manifest"], template_engine: self["template_engine"], writer: self["writer"])
    when "orchestrator" then SchemaOrg::Codegen::Orchestrator.new(generator: self["generator"], manifest: self["manifest"], vocabulary: self["vocabulary"])
    else raise KeyError, "Unknown application component #{name}"
    end
  end

  def self.finalize!
    self
  end
end
