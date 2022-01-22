package html_to_text;

/**
	Describes how to handle a tag.
**/
typedef TagDefinition = {
	/**
		Identifier of a {@link FormatCallback}, built-in or provided in `Options.formatters` dictionary.
	**/
	@:optional
	var format : String;
	/**
		Options to customize the formatter for this tag.
	**/
	@:optional
	var options : FormatOptions;
};