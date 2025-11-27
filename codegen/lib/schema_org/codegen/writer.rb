module SchemaOrg
  module Codegen
    class Writer
      def write(file, content)
        parent = file.parent
        parent.mkdir unless parent.exist?
        file.write content
      end
    end
  end
end
