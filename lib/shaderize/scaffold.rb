require 'rubygems'
require 'mustache'


module Shaderize
  Shader = Struct.new(:name, :attributes, :uniforms)

  class Scaffold

    def self.scaffold(shader_dir, output_dir)
      shaders = {}
      shaders_mtime = 0
      Dir.glob(File.join(shader_dir, "**/*.{frag,vert}")) do |filename|
        # puts "+ #{File.expand_path(filename)}"
        File.open(filename) do |file|
          shaders_mtime = [shaders_mtime, file.mtime.to_i].max
          shader_name = File.basename(filename, File.extname(filename))
          shaders[shader_name] ||= Shader.new(shader_name, [], [])
          file.each_line do |line|
            variables = Parser.parse_shader_line(line)
            variables.each do |v|
              # puts "    - #{v.type} #{v.size} #{v.name}"
              shaders[shader_name].attributes << v if v.type == :attribute
              shaders[shader_name].uniforms << v if v.type == :uniform
            end
          end
        end
      end

      templates = Dir.glob(File.join(output_dir, "**/*.tpl")).entries
      templates_mtime = templates.map { |t| mtime(t) }

      for template in templates
        source_mtime = [mtime(template), shaders_mtime, mtime(__FILE__)].max
        target = File.join(output_dir, File.basename(template, File.extname(template)))
        target_mtime = mtime(target)
        if source_mtime > target_mtime
          contents = Mustache.render(File.read(template), :shaders => shaders.values)
          File.open(target, "w") {|f| f.write(contents) }
          puts "Shaderized: #{File.basename(target)}"
        end
      end

    end


    private

    def self.mtime(filename)
      File.mtime(filename).to_i
    rescue
      0
    end

  end
end


