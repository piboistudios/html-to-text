package html_to_text;

/**
	Describes how to handle tags matched by a selector.
**/
typedef SelectorDefinition = {
	/**
		CSS selector. Refer to README for notes on supported selectors etc.
	**/
	var selector : String;
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