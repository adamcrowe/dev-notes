# Values

* % (font) relative to parent's computed font-size
* % (length) relative to parent's computed height or width
* em (font) relative to parent's computed font-size
* em (length) relative to element's computed font-size
* rem (font and length) relative to root font-size

```css
html, body {
	font-size: 16px; /* root font-size (defines what 1rem is) */
	width: 80vw; /* 80% of viewport width */
}

header {
	font-size: 150%; /* relative to root font-size (16px) 150% * 16 = 24px) */
	padding: 2em; /* relative to element's computed font-size (24px) (2em * 24px = 48px) */
	margin-bottom: 10rem; /* relative to root font-size (10rem * 16px = 160px) */
	height: 90vh; /* 90% of viewport height */
	width: 1000px;
}

.header-child {
	font-size: 3em; /* relative to parent's font-size (3em * 24px = 72px) */
	padding: 10%; /* relative to parent's width (10% * 1000px = 100px) */
}
```