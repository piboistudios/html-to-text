package html_to_text.lib.block_text_builder;

/**
	types of options for BlockTextBuilder methods.  These replace previously positional options.
**/
typedef AddInlineOptions = {
	@:optional
	var noWordTransform : Bool;
};