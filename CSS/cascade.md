# Cascade: Importance, Specificity, Source Order

## Importance (high to low)
1. User !important declarations
2. Author !important declarations
3. Author declarations
4. User declarations
5. Default browser (user agent) declarations

## Specifity (high to low) (used when parsing declarations with same importance)
1. Inline styles
2. IDs
3. Classes, pseudo-classes, attribute selectors
4. Elements, pseudo-elements

### EXAMPLE
Which of the following declaration blocks is the most specific? (Answer = 2)

```css
/* 1 */
.button {
	font-size: 20px;
	color: white;
	background-color: blue;
}
/* 2 */
nav#nav div.pull-right .button {
	background-color: green;
}
/* 3 */
a {
	background-color: purple;
}
/* 4 */
#nav a.button:hover {
	background-color: yellow;
}
```

Declaration | Score (Inline, IDs, Classes, Elements) | Specifity Order
1 | (0, 0, 1, 0) | 3
2 | (0, 1, 2, 2) | 1
3 | (0, 0, 0, 1) | 4
4 | (0, 1, 2, 1) | 2

Note: The universal selector has no specifity (0, 0, 0, 0)

## Source Order
If there are declarations with the same specifity, the last in the source order override the others.