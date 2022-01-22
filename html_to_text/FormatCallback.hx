package html_to_text;

/**
	A function to stringify a DOM node.
**/
typedef FormatCallback = (elem:DomNode, walk:RecursiveCallback, builder:html_to_text.lib.block_text_builder.BlockTextBuilder, formatOptions:FormatOptions) -> Void;