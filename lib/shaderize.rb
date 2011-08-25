require "rubygems"
require "mustache"

$:.unshift(File.dirname(__FILE__))

require "shaderize/version"
require "shaderize/scaffold"
require "shaderize/parser"


module Shaderize
  class CLI

    def self.start
      error unless ARGV.length == 2

      shader_dir = File.expand_path(ARGV[0])
      output_dir = File.expand_path(ARGV[1])

      error "Not a directory: '#{shader_dir}'" unless File.directory?(shader_dir)
      error "Not a directory: '#{output_dir}'" unless File.directory?(output_dir)

      Scaffold.scaffold(shader_dir, output_dir)
    end

    def self.error(message = nil)
      puts "Shaderize v#{VERSION}"
      puts "Usage: shaderize [shader_dir] [output_dir]\n"
      puts message unless message.nil?
      exit 1
    end

  end
end


Shaderize::CLI.start