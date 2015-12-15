#http://thingsaaronmade.com/blog/a-simple-intro-to-writing-a-lexer-with-ragel.html
#ragel -R ragellexer.rl

%%{

	machine test_texer;

	integer = ('+'|'-')?[0-9]+;

	main := |*
		integer => { emit(:integer_literal, data, token_array, ts, te) };
	*|;

}%%

%% write data;

def run_lexer(data)
	data = data.unpack("c*") if(data.is_a?(String))
	eof = data.length
	token_array = []

	%% write init;
	%% write exec;

	puts token_array.inspect
end

def emit(token_name, data, target_array, ts, te)
	target_array << {:name => token_name.to_sym, :value => data[ts..te].pack("c*") }
end
