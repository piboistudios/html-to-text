package html_to_text;

/**
	Options for handling complex documents and limiting the output size.
**/
typedef LimitsOptions = {
	/**
		...]
		A string to put in place of skipped content.
	**/
	@:optional
	var ellipsis : String;
	/**
		Process only this many child nodes of any element.
		
		Remaining nodes, if any, will be replaced with ellipsis.
		
		Text nodes are counted along with tags.
		
		No limit if undefined.
	**/
	@:optional
	var maxChildNodes : Float;
	/**
		Only go to a certain depth starting from `Options.baseElement`.
		
		Replace deeper nodes with ellipsis.
		
		No depth limit if undefined.
	**/
	@:optional
	var maxDepth : Float;
	/**
		If the input string is longer than this value - it will be truncated
		and a message will be sent to `stderr`.
		
		Ellipsis is not used in this case.
	**/
	@:optional
	var maxInputLength : Float;
};