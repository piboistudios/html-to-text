package html_to_text;

/**
	Text decoding options given to `he.decode`.
	
	For more informations see the [he](https://github.com/mathiasbynens/he) module.
**/
typedef DecodeOptions = {
	/**
		TLDR: If set to `true` - leave attribute values raw, don't parse them as text content.
	**/
	@:optional
	var isAttributeValue : Bool;
	/**
		TLDR: If set to `true` - throw an error on invalid HTML input.
	**/
	@:optional
	var strict : Bool;
};