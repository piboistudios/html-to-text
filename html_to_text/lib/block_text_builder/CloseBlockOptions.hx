package html_to_text.lib.block_text_builder;

typedef CloseBlockOptions = {
	@:optional
	var trailingLineBreaks : Float;
	@:optional
	dynamic function blockTransform(str:String):String;
};