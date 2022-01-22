package html_to_text;

/**
	A function to process child nodes.
	Passed into a {@link FormatCallback} as an argument.
**/
typedef RecursiveCallback = (nodes:Array<DomNode>, builder:html_to_text.lib.block_text_builder.BlockTextBuilder) -> Void;