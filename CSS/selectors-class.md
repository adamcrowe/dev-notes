# Class selector
* A `class` selector matches elements based on the contents of their class attribute.

```CSS
.red {
	color: #f33;
}

.yellow-bg {
	background: #ffa;
}

.fancy {
	font-weight: bold;
	text-shadow: 4px 4px 3px #77f;
}
```

```HTML
<p class="red">This paragraph has red text.</p>
<p class="red yellow-bg">This paragraph has red text and a yellow background.</p>
<p class="red fancy">This paragraph has red text and "fancy" styling.</p>
<p>This is just a regular paragraph.</p>
```