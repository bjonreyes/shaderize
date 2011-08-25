#!/usr/local/bin/ragel -o parser.rb -R -F1

module Shaderize
  ShaderVariable = Struct.new(:name, :size, :type)

  class Parser

    def self.parse_shader_line(data)
      variable_list = []

      def data.[](index)
        return self.slice(index).ord
      end

      size = 0
      type = 0
      name = ''

      %%{
        machine parse;
        write data;

        action reset { size = 0; type = 0; name = ''; }

        action attribute { type = :attribute; }
        action uniform   { type = :uniform; }
        action varying   { type = :varying; }

        action size1 { size = 1; }
        action size2 { size = 2; }
        action size3 { size = 3; }
        action size4 { size = 4; }

        action start_identifier { name = ''; }
        action build_identifier { name += fc.chr; }
        action finish_identifier { variable_list << ShaderVariable.new( name, size, type ); }

        invariant_qualifier = ( 'invariant' ) space+;
        precision_qualifier = ( 'lowp' | 'mediump' | 'highp' ) space+;
        storage_qualifier = ( 'attribute' @attribute | 'uniform' @uniform | 'varying' @varying ) space+;

        type1 = ( 'float' | 'vec2' | 'vec3' | 'vec4' | 'sampler2D' | 'samplerCube' ) @size1;
        type2 = ( 'mat2' ) @size2;
        type3 = ( 'mat3' ) @size3;
        type4 = ( 'mat4' ) @size4;
        type_specifier = ( type1 | type2 | type3 | type4 ) space+;

        identifier = (( alpha | '_' ) $build_identifier ( alnum | '_' )* $build_identifier) >start_identifier %finish_identifier;

        declaration =
          space*
          invariant_qualifier?
          storage_qualifier
          precision_qualifier?
          type_specifier
          identifier
          (space* ',' space* identifier)*
          space*
          ';'
          ;

        main := (declaration >reset)+;

        write init;
        write exec;
      }%%

      variable_list
    end

  end
end