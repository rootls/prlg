
# line 1 "ragellexer.rl"
#http://thingsaaronmade.com/blog/a-simple-intro-to-writing-a-lexer-with-ragel.html
#ragel -R ragellexer.rl


# line 14 "ragellexer.rl"



# line 12 "ragellexer.rb"
class << self
	attr_accessor :_test_texer_actions
	private :_test_texer_actions, :_test_texer_actions=
end
self._test_texer_actions = [
	0, 1, 0, 1, 1, 1, 2
]

class << self
	attr_accessor :_test_texer_key_offsets
	private :_test_texer_key_offsets, :_test_texer_key_offsets=
end
self._test_texer_key_offsets = [
	0, 0, 2, 6
]

class << self
	attr_accessor :_test_texer_trans_keys
	private :_test_texer_trans_keys, :_test_texer_trans_keys=
end
self._test_texer_trans_keys = [
	48, 57, 43, 45, 48, 57, 48, 57, 
	0
]

class << self
	attr_accessor :_test_texer_single_lengths
	private :_test_texer_single_lengths, :_test_texer_single_lengths=
end
self._test_texer_single_lengths = [
	0, 0, 2, 0
]

class << self
	attr_accessor :_test_texer_range_lengths
	private :_test_texer_range_lengths, :_test_texer_range_lengths=
end
self._test_texer_range_lengths = [
	0, 1, 1, 1
]

class << self
	attr_accessor :_test_texer_index_offsets
	private :_test_texer_index_offsets, :_test_texer_index_offsets=
end
self._test_texer_index_offsets = [
	0, 0, 2, 6
]

class << self
	attr_accessor :_test_texer_trans_targs
	private :_test_texer_trans_targs, :_test_texer_trans_targs=
end
self._test_texer_trans_targs = [
	3, 0, 1, 1, 3, 0, 3, 2, 
	2, 0
]

class << self
	attr_accessor :_test_texer_trans_actions
	private :_test_texer_trans_actions, :_test_texer_trans_actions=
end
self._test_texer_trans_actions = [
	0, 0, 0, 0, 0, 0, 0, 5, 
	5, 0
]

class << self
	attr_accessor :_test_texer_to_state_actions
	private :_test_texer_to_state_actions, :_test_texer_to_state_actions=
end
self._test_texer_to_state_actions = [
	0, 0, 1, 0
]

class << self
	attr_accessor :_test_texer_from_state_actions
	private :_test_texer_from_state_actions, :_test_texer_from_state_actions=
end
self._test_texer_from_state_actions = [
	0, 0, 3, 0
]

class << self
	attr_accessor :_test_texer_eof_trans
	private :_test_texer_eof_trans, :_test_texer_eof_trans=
end
self._test_texer_eof_trans = [
	0, 0, 0, 9
]

class << self
	attr_accessor :test_texer_start
end
self.test_texer_start = 2;
class << self
	attr_accessor :test_texer_first_final
end
self.test_texer_first_final = 2;
class << self
	attr_accessor :test_texer_error
end
self.test_texer_error = 0;

class << self
	attr_accessor :test_texer_en_main
end
self.test_texer_en_main = 2;


# line 17 "ragellexer.rl"

def run_lexer(data)
	data = data.unpack("c*") if(data.is_a?(String))
	eof = data.length
	token_array = []

	
# line 131 "ragellexer.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = test_texer_start
	ts = nil
	te = nil
	act = 0
end

# line 24 "ragellexer.rl"
	
# line 143 "ragellexer.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
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
	_acts = _test_texer_from_state_actions[cs]
	_nacts = _test_texer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _test_texer_actions[_acts - 1]
			when 1 then
# line 1 "NONE"
		begin
ts = p
		end
# line 177 "ragellexer.rb"
		end # from state action switch
	end
	if _trigger_goto
		next
	end
	_keys = _test_texer_key_offsets[cs]
	_trans = _test_texer_index_offsets[cs]
	_klen = _test_texer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _test_texer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _test_texer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _test_texer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _test_texer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _test_texer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	end
	if _goto_level <= _eof_trans
	cs = _test_texer_trans_targs[_trans]
	if _test_texer_trans_actions[_trans] != 0
		_acts = _test_texer_trans_actions[_trans]
		_nacts = _test_texer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _test_texer_actions[_acts - 1]
when 2 then
# line 11 "ragellexer.rl"
		begin
te = p
p = p - 1; begin  emit(:integer_literal, data, token_array, ts, te)  end
		end
# line 249 "ragellexer.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	_acts = _test_texer_to_state_actions[cs]
	_nacts = _test_texer_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _test_texer_actions[_acts - 1]
when 0 then
# line 1 "NONE"
		begin
ts = nil;		end
# line 269 "ragellexer.rb"
		end # to state action switch
	end
	if _trigger_goto
		next
	end
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
	if p == eof
	if _test_texer_eof_trans[cs] > 0
		_trans = _test_texer_eof_trans[cs] - 1;
		_goto_level = _eof_trans
		next;
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 25 "ragellexer.rl"

	puts token_array.inspect
end

def emit(token_name, data, target_array, ts, te)
	target_array << {:name => token_name.to_sym, :value => data[ts..te].pack("c*") }
end

run_lexer("test = -100")
