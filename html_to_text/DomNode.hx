package html_to_text;

/**
	Simplified definition of [htmlparser2](https://github.com/fb55/htmlparser2) Node type.
	
	Makes no distinction between elements (tags) and data nodes (good enough for now).
**/
typedef DomNode = {
	/**
		Type of node - "text", "tag", "comment", "script", etc.
	**/
	var type : String;
	/**
		Content of a data node.
	**/
	@:optional
	var data : String;
	/**
		Tag name.
	**/
	@:optional
	var name : String;
	/**
		Tag attributes dictionary.
	**/
	@:optional
	var attribs : Dynamic;
	/**
		Child nodes.
		Not optional for typescript use.
	**/
	var children : Array<DomNode>;
	/**
		Parent node.
	**/
	@:optional
	var parent : DomNode;
};