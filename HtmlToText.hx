@:jsRequire("html-to-text") @valueModuleOnly extern class HtmlToText {
	/**
		Preprocess options, compile selectors into a decision tree,
		return a function intended for batch processing.
	**/
	static function compile(?options:html_to_text.HtmlToTextOptions):html_to_text.CompiledFunction;
	/**
		Convert given HTML content to plain text string.
	**/
	static function htmlToText(html:String, ?options:html_to_text.HtmlToTextOptions):String;
	static function fromString(html:String, ?options:html_to_text.HtmlToTextOptions):String;
	/**
		Convert given HTML content to plain text string.
	**/
	static function convert(html:String, ?options:html_to_text.HtmlToTextOptions):String;
}