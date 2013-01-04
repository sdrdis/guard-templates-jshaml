require 'haml_to_js/compiler'

module Guard
  class Templates
    module Jshaml
      class Compiler
        def self.compile(str, target)
          engine  = ::Compiler.new
          code = engine.convert_from_string(str)

          return <<eos
function(locals) {
  with(locals || {}) {
    try {
      #{code};
      return _$output;
    } catch(e) {
      console.error(\"Error on file: #{target[:name]} around line \"+_$line+\"\\n Stack: \" + e.stack);
    }
  }
}
eos
        end
      end
    end
  end
end  
