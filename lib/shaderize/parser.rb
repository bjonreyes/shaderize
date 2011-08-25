
# line 1 "parser.rb.rl"
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

    
# line 22 "parser.rb"
class << self
	attr_accessor :_parse_trans_keys
	private :_parse_trans_keys, :_parse_trans_keys=
end
self._parse_trans_keys = [
	0, 0, 9, 118, 9, 118, 
	116, 116, 116, 116, 114, 
	114, 105, 105, 98, 98, 
	117, 117, 116, 116, 101, 101, 
	9, 32, 9, 118, 108, 
	108, 111, 111, 97, 97, 
	116, 116, 9, 32, 9, 122, 
	9, 122, 9, 59, 110, 
	110, 118, 118, 97, 97, 
	114, 114, 105, 105, 97, 97, 
	110, 110, 116, 116, 9, 
	32, 9, 118, 110, 110, 
	105, 105, 102, 102, 111, 111, 
	114, 114, 109, 109, 97, 
	97, 114, 114, 121, 121, 
	105, 105, 110, 110, 103, 103, 
	105, 105, 103, 103, 104, 
	104, 112, 112, 9, 32, 
	9, 118, 97, 97, 116, 116, 
	50, 52, 97, 97, 109, 
	109, 112, 112, 108, 108, 
	101, 101, 114, 114, 50, 67, 
	68, 68, 117, 117, 98, 
	98, 101, 101, 101, 101, 
	99, 99, 50, 52, 111, 111, 
	119, 119, 97, 101, 100, 
	100, 105, 105, 117, 117, 
	109, 109, 9, 118, 0
]

class << self
	attr_accessor :_parse_key_spans
	private :_parse_key_spans, :_parse_key_spans=
end
self._parse_key_spans = [
	0, 110, 110, 1, 1, 1, 1, 1, 
	1, 1, 1, 24, 110, 1, 1, 1, 
	1, 24, 114, 114, 51, 1, 1, 1, 
	1, 1, 1, 1, 1, 24, 110, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 24, 
	110, 1, 1, 3, 1, 1, 1, 1, 
	1, 1, 18, 1, 1, 1, 1, 1, 
	1, 3, 1, 1, 5, 1, 1, 1, 
	1, 110
]

class << self
	attr_accessor :_parse_index_offsets
	private :_parse_index_offsets, :_parse_index_offsets=
end
self._parse_index_offsets = [
	0, 0, 111, 222, 224, 226, 228, 230, 
	232, 234, 236, 238, 263, 374, 376, 378, 
	380, 382, 407, 522, 637, 689, 691, 693, 
	695, 697, 699, 701, 703, 705, 730, 841, 
	843, 845, 847, 849, 851, 853, 855, 857, 
	859, 861, 863, 865, 867, 869, 871, 873, 
	898, 1009, 1011, 1013, 1017, 1019, 1021, 1023, 
	1025, 1027, 1029, 1048, 1050, 1052, 1054, 1056, 
	1058, 1060, 1064, 1066, 1068, 1074, 1076, 1078, 
	1080, 1082
]

class << self
	attr_accessor :_parse_indicies
	private :_parse_indicies, :_parse_indicies=
end
self._parse_indicies = [
	0, 0, 0, 0, 0, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 0, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 1, 1, 1, 1, 1, 1, 1, 
	3, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 4, 5, 1, 6, 
	6, 6, 6, 6, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 6, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 7, 
	1, 1, 1, 1, 1, 1, 1, 8, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 9, 10, 1, 11, 1, 
	12, 1, 13, 1, 14, 1, 15, 1, 
	16, 1, 17, 1, 18, 1, 19, 19, 
	19, 19, 19, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 19, 1, 19, 
	19, 19, 19, 19, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 19, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 20, 1, 21, 1, 
	1, 1, 22, 23, 1, 1, 1, 1, 
	1, 24, 1, 1, 25, 1, 26, 1, 
	27, 1, 28, 1, 29, 1, 30, 30, 
	30, 30, 30, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 30, 1, 30, 
	30, 30, 30, 30, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 30, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 1, 1, 1, 1, 31, 1, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 31, 31, 31, 31, 31, 31, 31, 
	31, 1, 32, 32, 32, 32, 32, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 32, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 33, 1, 1, 
	1, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 1, 35, 1, 1, 1, 
	1, 1, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 1, 1, 1, 1, 
	34, 1, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 34, 34, 34, 34, 
	34, 34, 34, 34, 1, 36, 36, 36, 
	36, 36, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 36, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	30, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 37, 
	1, 38, 1, 39, 1, 40, 1, 41, 
	1, 42, 1, 43, 1, 44, 1, 45, 
	1, 46, 46, 46, 46, 46, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	46, 1, 46, 46, 46, 46, 46, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 46, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 7, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 9, 10, 
	1, 47, 1, 48, 1, 49, 1, 50, 
	1, 51, 1, 52, 1, 53, 1, 54, 
	1, 55, 1, 56, 1, 57, 1, 58, 
	1, 59, 1, 60, 1, 61, 1, 62, 
	1, 63, 63, 63, 63, 63, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	63, 1, 63, 63, 63, 63, 63, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 63, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 20, 
	1, 1, 1, 1, 1, 1, 64, 1, 
	1, 1, 1, 1, 24, 1, 1, 25, 
	1, 65, 1, 66, 1, 67, 68, 69, 
	1, 70, 1, 71, 1, 72, 1, 73, 
	1, 74, 1, 75, 1, 76, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 77, 1, 
	29, 1, 78, 1, 79, 1, 29, 1, 
	80, 1, 81, 1, 29, 29, 29, 1, 
	82, 1, 61, 1, 65, 1, 1, 1, 
	83, 1, 84, 1, 85, 1, 86, 1, 
	61, 1, 0, 0, 0, 0, 0, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 0, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 1, 1, 1, 1, 1, 
	1, 1, 3, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 4, 5, 
	1, 0
]

class << self
	attr_accessor :_parse_trans_targs
	private :_parse_trans_targs, :_parse_trans_targs=
end
self._parse_trans_targs = [
	2, 0, 3, 21, 31, 37, 2, 3, 
	21, 31, 37, 4, 5, 6, 7, 8, 
	9, 10, 11, 12, 13, 43, 66, 68, 
	52, 63, 14, 15, 16, 17, 18, 19, 
	20, 18, 19, 73, 20, 73, 22, 23, 
	24, 25, 26, 27, 28, 29, 30, 32, 
	33, 34, 35, 36, 11, 38, 39, 40, 
	41, 42, 11, 44, 45, 46, 47, 48, 
	49, 50, 51, 17, 17, 17, 53, 54, 
	55, 56, 57, 58, 59, 60, 61, 62, 
	64, 65, 67, 69, 70, 71, 72
]

class << self
	attr_accessor :_parse_trans_actions
	private :_parse_trans_actions, :_parse_trans_actions=
end
self._parse_trans_actions = [
	1, 0, 1, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 2, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 3, 0, 4, 
	5, 5, 6, 5, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 7, 0, 0, 0, 
	0, 0, 8, 0, 0, 0, 0, 0, 
	0, 0, 0, 9, 10, 11, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :parse_start
end
self.parse_start = 1;
class << self
	attr_accessor :parse_first_final
end
self.parse_first_final = 73;
class << self
	attr_accessor :parse_error
end
self.parse_error = 0;

class << self
	attr_accessor :parse_en_main
end
self.parse_en_main = 1;


# line 304 "parser.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = parse_start
end

# line 311 "parser.rb"
begin
	testEof = false
	_slen, _trans, _keys, _inds, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = cs << 1
	_inds = _parse_index_offsets[cs]
	_slen = _parse_key_spans[cs]
	_trans = if (   _slen > 0 && 
			_parse_trans_keys[_keys] <= data[p].ord && 
			data[p].ord <= _parse_trans_keys[_keys + 1] 
		    ) then
			_parse_indicies[ _inds + data[p].ord - _parse_trans_keys[_keys] ] 
		 else 
			_parse_indicies[ _inds + _slen ]
		 end
	cs = _parse_trans_targs[_trans]
	if _parse_trans_actions[_trans] != 0
	case _parse_trans_actions[_trans]
	when 1 then
# line 22 "parser.rb.rl"
		begin
 size = 0; type = 0; name = ''; 		end
	when 2 then
# line 24 "parser.rb.rl"
		begin
 type = :attribute; 		end
	when 7 then
# line 25 "parser.rb.rl"
		begin
 type = :uniform; 		end
	when 8 then
# line 26 "parser.rb.rl"
		begin
 type = :varying; 		end
	when 3 then
# line 28 "parser.rb.rl"
		begin
 size = 1; 		end
	when 9 then
# line 29 "parser.rb.rl"
		begin
 size = 2; 		end
	when 10 then
# line 30 "parser.rb.rl"
		begin
 size = 3; 		end
	when 11 then
# line 31 "parser.rb.rl"
		begin
 size = 4; 		end
	when 6 then
# line 34 "parser.rb.rl"
		begin
 name += data[p].ord.chr; 		end
	when 5 then
# line 35 "parser.rb.rl"
		begin
 variable_list << ShaderVariable.new( name, size, type ); 		end
	when 4 then
# line 33 "parser.rb.rl"
		begin
 name = ''; 		end
# line 34 "parser.rb.rl"
		begin
 name += data[p].ord.chr; 		end
# line 394 "parser.rb"
	end
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
end
	end

# line 65 "parser.rb.rl"


    variable_list
    end

  end
end