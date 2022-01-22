package html_to_text;

/**
	Describes how to wrap long words.
**/
typedef LongWordSplitOptions = {
	/**
		Break long words on the `Options.wordwrap` limit when there are no characters to wrap on.
	**/
	@:optional
	var forceWrapOnLimit : Bool;
	/**
		An array containing the characters that may be wrapped on.
	**/
	@:optional
	var wrapCharacters : Array<String>;
};