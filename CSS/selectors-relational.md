# Relational Selectors/Combinators
* Relational selectors target elements based on their relationship to another element within the markup.

## Descendant selector/combinator (` `)
* The descendant combinator — typically represented by a single space (` `) character — combines two selectors such that elements matched by the second selector are selected if they have an ancestor element matching the first selector. Selectors that utilize a descendant combinator are called descendant selectors.

```CSS
/* Select list items that are descendants of the "my-things" list */
ul.my-things li {
	margin: 2em;
}
```

```CSS
li {
	list-style-type: disc;
}

li li {
	list-style-type: circle;
}
```

```HTML
<ul>
	<li>
		<div>[disc] Item 1</div>
		<ul>
			<li>[circle] Subitem A</li>
			<li>[circle] Subitem B</li>
		</ul>
	</li>
	<li>
		<div>[disc] Item 2</div>
		<ul>
			<li>[circle] Subitem A</li>
			<li>[circle] Subitem B</li>
		</ul>
	</li>
</ul>
```

## Child selector/combinator (`>`)
* The child combinator (`>`) is placed between two CSS selectors. It matches only those elements matched by the second selector that are the children of elements matched by the first. Elements matched by the second selector must be the immediate children of the elements matched by the first selector. This is stricter than the descendant combinator, which matches all elements matched by the second selector for which there exists an ancestor element matched by the first selector, regardless of the number of "hops" up the DOM.

```CSS
span {
	background-color: white;
}

div > span {
	background-color: DodgerBlue;
}
```

```HTML
<div>
	<span>Span #1, in the div.
		<span>Span #2, in the span that's in the div.</span>
	</span>
</div>
<span>Span #3, not in the div at all.</span>
```

## Adjacent/next sibling selector/combinator (`+`)
* The adjacent sibling combinator (`+`) separates two selectors and matches the second element only if it immediately follows the first element, and both are children of the same parent.

```CSS
/* Paragraphs that come immediately after any image */
img + p {
	font-style: bold;
}
```

```CSS
li:first-of-type + li {
	color: red;
}
```

```HTML
<ul>
	<li>One</li>
	<li>Two!</li>
	<li>Three</li>
</ul>
```

## General sibling or following sibling selector/combinator (`~`)
* The general sibling combinator (`~`) separates two selectors and matches the second element only if it follows the first element (though not necessarily immediately), and both are children of the same parent element.

```CSS
/* Paragraphs that are siblings of and subsequent to any image */
img ~ p {
	color: red;
}
```

```CSS
p ~ span {
	color: red;
}
```

```HTML
<span>This is not red.</span>
<p>Here is a paragraph.</p>
<code>Here is some code.</code>
<span>And here is a red span!</span>
<code>More code...</code>
<span>And this is a red span!</span>
```