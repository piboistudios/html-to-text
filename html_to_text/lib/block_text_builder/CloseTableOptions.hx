package html_to_text.lib.block_text_builder;

typedef CloseTableOptions = {
	@:optional
	var colSpacing : Float;
	@:optional
	var rowSpacing : Float;
	@:optional
	var leadingLineBreaks : Float;
	@:optional
	var trailingLineBreaks : Float;
};