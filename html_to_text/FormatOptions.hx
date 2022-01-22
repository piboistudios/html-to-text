package html_to_text;

/**
	Options specific to different formatters ({@link FormatCallback}).
	This is an umbrella type definition. Each formatter supports it's own subset of options.
**/
typedef FormatOptions = {
	/**
		Number of line breaks to separate previous block from this one.
		
		Note that N+1 line breaks are needed to make N empty lines.
	**/
	@:optional
	var leadingLineBreaks : Float;
	/**
		Number of line breaks to separate this block from the next one.
		
		Note that N+1 line breaks are needed to make N empty lines.
	**/
	@:optional
	var trailingLineBreaks : Float;
	/**
		(Only for: `anchor` and `image` formatters.) Server host for link `href` attributes and image `src` attributes
		relative to the root (the ones that start with `/`).
		
		For example, with `baseUrl = 'http://asdf.com'` and `<a href='/dir/subdir'>...</a>`
		the link in the text will be `http://asdf.com/dir/subdir`.
		
		Keep in mind that `baseUrl` should not end with a `/`.
	**/
	@:optional
	var baseUrl : String;
	/**
		(Only for: `anchor` formatter.) By default links are translated in the following way:
		
		`<a href='link'>text</a>` => becomes => `text [link]`.
		
		If this option is set to `true` and `link` and `text` are the same,
		`[link]` will be omitted and only `text` will be present.
	**/
	@:optional
	var hideLinkHrefIfSameAsText : Bool;
	/**
		(Only for: `anchor` formatter.) Ignore all links. Only process internal text of anchor tags.
	**/
	@:optional
	var ignoreHref : Bool;
	/**
		(Only for: `anchor` formatter.) Ignore anchor links (where `href='#...'`).
	**/
	@:optional
	var noAnchorUrl : Bool;
	/**
		(Only for: `anchor` formatter.) Don't print brackets around links.
	**/
	@:optional
	var noLinkBrackets : Bool;
	/**
		(Only for: `unorderedList` formatter.) String prefix for each list item.
	**/
	@:optional
	var itemPrefix : String;
	/**
		(Only for: `heading` formatter.) By default, headings (`<h1>`, `<h2>`, etc) are uppercased.
		
		Set this to `false` to leave headings as they are.
	**/
	@:optional
	var uppercase : Bool;
	/**
		(Only for: `horizontalLine` formatter.) Length of the `<hr/>` line.
		
		If numeric value is provided - it is used.
		Otherwise, if global `wordwrap` number is provided - it is used.
		If neither is true, then the fallback value of 40 is used.
	**/
	@:optional
	var length : Float;
	/**
		(Only for: `blockquote` formatter.) Trim empty lines from blockquote.
	**/
	@:optional
	var trimEmptyLines : Bool;
	/**
		(Only for: `table`, `dataTable` formatter.) By default, heading cells (`<th>`) are uppercased.
		
		Set this to `false` to leave heading cells as they are.
	**/
	@:optional
	var uppercaseHeaderCells : Bool;
	/**
		(Only for: `table`, `dataTable` formatter.) Data table cell content will be wrapped to fit this width
		instead of global `wordwrap` limit.
		
		Set to `undefined` in order to fall back to `wordwrap` limit.
	**/
	@:optional
	var maxColumnWidth : Float;
	/**
		(Only for: `table`, `dataTable` formatter.) Number of spaces between data table columns.
	**/
	@:optional
	var colSpacing : Float;
	/**
		(Only for: `table`, `dataTable` formatter.) Number of empty lines between data table rows.
	**/
	@:optional
	var rowSpacing : Float;
};