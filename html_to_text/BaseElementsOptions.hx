package html_to_text;

/**
	Options for narrowing down to informative parts of HTML document.
**/
typedef BaseElementsOptions = {
	/**
		The resulting text output will be composed from the text content of elements
		matched with these selectors.
	**/
	@:optional
	var selectors : Array<String>;
	/**
		When multiple selectors are set, this option specifies
		whether the selectors order has to be reflected in the output text.
		
		`'selectors'` (default) - matches for the first selector will appear first, etc;
		
		`'occurrence'` - all bases will appear in the same order as in input HTML.
	**/
	@:optional
	var orderBy : String;
	/**
		Use the entire document if none of provided selectors matched.
	**/
	@:optional
	var returnDomByDefault : Bool;
};