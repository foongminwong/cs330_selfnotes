//javascript

var IDENTIFIER = 'IDENTIFIER';

var PLUS = 'PLUS';

var MINUS = 'MINUS';

var COMMA = 'COMMA';

var MOD = 'MOD';

var INTEGER = 'INTEGER';

// find function within a funtion in javascript
function lex(source){
	var tokens = [];
	var toeknSoFar = '';
	var i =0;

	function has(regex){
	 return source.charAt(i).match(regex);
	}
 
	function devour(){
	 tokenSoFar += source.charAt(i);
	 i+= 1;
	}

	function emit(type){
	 token.push({type: type, source: tokenSoFar});
	tokenSoFar = '';
	}
// /\*/ absterisk   	/\// forward slash 
	while(i<source.length){
	 if(has(/\+/)){
	  devour();
	  emit(PLUS);
	 }  else if(has(/%/)){
		while(has(/\d/)){
			devour();
		}
	emit(MOD);
	} else if(has(/\d/)){
		while(has(/\d/)){
			devour();
		}
	emit(INTEGER);	
	}	
	}

	return tokens;
}




