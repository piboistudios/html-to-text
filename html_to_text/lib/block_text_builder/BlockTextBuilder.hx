package html_to_text.lib.block_text_builder;

/**
	Helps to build text from inline and block elements.
**/
typedef BlockTextBuilder = {
	/**
		Put a word-by-word transform function onto the transformations stack.
		
		Mainly used for uppercasing. Can be bypassed to add unformatted text such as URLs.
		
		Word transformations applied before wrapping.
	**/
	function pushWordTransform(wordTransform:(str:String) -> String):Void;
	/**
		Remove a function from the word transformations stack.
	**/
	function popWordTransform():Null<(str:String) -> String>;
	/**
		Add a line break into currently built block.
	**/
	function addLineBreak():Void;
	/**
		Allow to break line in case directly following text will not fit.
	**/
	function addWordBreakOpportunity():Void;
	/**
		Add a node inline into the currently built block.
	**/
	@:overload(function(str:String, ?noWordTransform:Bool):Void { })
	function addInline(str:String, ?addInlineOptions:AddInlineOptions):Void;
	/**
		Start building a new block.
	**/
	@:overload(function(?leadingLineBreaks:Float, ?reservedLineLength:Float, ?isPre:Bool):Void { })
	function openBlock(?openBlockOptions:OpenBlockOptions):Void;
	/**
		Finalize currently built block, add it's content to the parent block.
		
		A function to transform the block text before adding to the parent block.
		This happens after word wrap and should be used in combination with reserved line length
		in order to keep line lengths correct.
		Used for whole block markup.
	**/
	@:overload(function(?trailingLineBreaks:Float, ?blockTransform:BlockTransformer):Void { })
	function closeBlock(?closeBlockOptions:CloseBlockOptions):Void;
	/**
		Start building a table.
	**/
	function openTable():Void;
	/**
		Start building a table row.
	**/
	function openTableRow():Void;
	/**
		Start building a table cell.
	**/
	@:overload(function(?maxColumnWidth:Float):Void { })
	function openTableCell(?openTableCellOptions:OpenTableCellOptions):Void;
	/**
		Finalize currently built table cell and add it to parent table row's cells.
	**/
	@:overload(function(?colspan:Float, ?rowspan:Float):Void { })
	function closeTableCell(?closeTableCellOptions:CloseTableCellOptions):Void;
	/**
		Finalize currently built table row and add it to parent table's rows.
	**/
	function closeTableRow():Void;
	/**
		Finalize currently built table and add the rendered text to the parent block.
	**/
	@:overload(function(?colSpacing:Float, ?rowSpacing:Float, ?leadingLineBreaks:Float, ?trailingLineBreaks:Float):Void { })
	function closeTable(?closeTableOptions:CloseTableOptions):Void;
	/**
		Return the rendered text content of this builder.
	**/
	function toString():String;
};