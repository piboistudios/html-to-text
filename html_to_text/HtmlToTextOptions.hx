package html_to_text;

typedef HtmlToTextOptions = {
	/**
		Options for narrowing down to informative parts of HTML document.
	**/
	@:optional
	var baseElements : BaseElementsOptions;
	/**
		Text decoding options given to `he.decode`.
		
		For more informations see the [he](https://github.com/mathiasbynens/he) module.
	**/
	@:optional
	var decodeOptions : DecodeOptions;
	/**
		A dictionary with custom formatting functions for specific kinds of elements.
		
		Keys are custom string identifiers, values are callbacks.
	**/
	@:optional
	var formatters : { };
	/**
		Options for handling complex documents and limiting the output size.
	**/
	@:optional
	var limits : LimitsOptions;
	/**
		Describes how to wrap long words.
	**/
	@:optional
	var longWordSplit : LongWordSplitOptions;
	/**
		By default, any newlines `\n` from the input HTML are dropped.
		
		If `true`, these newlines will be preserved in the output.
	**/
	@:optional
	var preserveNewlines : Bool;
	/**
		Instructions for how to render HTML elements based on matched selectors.
		
		Use this to (re)define options for new or already supported tags.
	**/
	@:optional
	var selectors : Array<SelectorDefinition>;
	/**
		All characters that are considered whitespace.
		Default is according to HTML specifications.
	**/
	@:optional
	var whitespaceCharacters : String;
	/**
		After how many chars a line break should follow in `p` elements.
		
		Set to `null` or `false` to disable word-wrapping.
	**/
	@:optional
	var wordwrap : ts.AnyOf2<Float, Bool>;
	@:optional
	var baseElement : ts.AnyOf2<String, Array<String>>;
	@:optional
	var hideLinkHrefIfSameAsText : Bool;
	@:optional
	var linkHrefBaseUrl : String;
	@:optional
	var ignoreHref : Bool;
	@:optional
	var ignoreImage : Bool;
	@:optional
	var noLinkBrackets : Bool;
	@:optional
	var uppercaseHeadings : Bool;
	@:optional
	var singleNewLineParagraphs : Bool;
	@:optional
	var unorderedListItemPrefix : String;
	@:optional
	var returnDomByDefault : Bool;
	@:optional
	var tables : ts.AnyOf2<Bool, Array<String>>;
	@:optional
	var tags : TagDefinitions;
};