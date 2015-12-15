grammar Graphics;

file : command+ ; // a file is a list of commands

command : 'line' 'from' point 'to' point ;

point : INT ',' INT ;

INT : '0'..'9'+ ; // lexer rule to match 1 of more digits

WS : (' ' | '\t' | '\r' | '\n') { skip(); } ;

