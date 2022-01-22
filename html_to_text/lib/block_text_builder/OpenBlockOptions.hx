package html_to_text.lib.block_text_builder;

typedef OpenBlockOptions = {
	@:optional
	var leadingLineBreaks : Float;
	@:optional
	var reservedLineLength : Float;
	@:optional
	var isPre : Bool;
};