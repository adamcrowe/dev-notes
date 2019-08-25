# Pseudo-Elements
> A pseudo-element is a keyword added to a selector that lets you style a specific part of the selected element(s). For example, `::first-line` can be used to change the font of the first line of a paragraph.

## ::after (:after)
> `::after` creates a pseudo-element that is the last child of the selected element. It is often used to add cosmetic content to an element with the content property. It is inline by default.

```CSS
/* Add an arrow after links */
a::after {
    content: "→";
}
```

```CSS
.exciting-text::after {
    content: " <- EXCITING!";
    color: green;
}

.boring-text::after {
    content: " <- BORING";
    color: red;
}
```

```HTML
<p class="boring-text">Here is some plain old boring text.</p>
<p>Here is some normal text that is neither boring nor exciting.</p>
<p class="exciting-text">Contributing to MDN is easy and fun.</p>
```

Tooltip example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::after>

## ::backdrop
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::backdrop>

## ::before (:before)
> `::before` creates a pseudo-element that is the first child of the selected element. It is often used to add cosmetic content to an element with the content property. It is inline by default.

```CSS
/* Add a heart before links */
a::before {
    content: "♥";
}
```

## ::cue (:cue)
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::cue>

## ::first-letter (:first-letter)
> `::first-letter` applies styles to the first letter of the first line of a block-level element, but only when not preceded by other content (such as images or inline tables).

```CSS
/* Selects the first letter of a <p> */
p::first-letter {
    font-size: 130%;
}
```

## ::first-line (:first-line)
> `::first-line` applies styles to the first line of a block-level element. Note that the length of the first line depends on many factors, including the width of the element, the width of the document, and the font size of the text.

```CSS
/* Selects the first line of a <p> */
p::first-line {
    color: red;
}
```

## ::grammar-error
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::grammar-error>

## ::marker
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::marker>

## ::part()
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::part>

## ::placeholder
> `::placeholder` represents the placeholder text in an `<input>` or `<textarea>` element.

```CSS
::placeholder {
    color: blue;
    font-size: 1.5em;
}
```

## ::selection
> `::selection` applies styles to the part of a document that has been highlighted by the user (such as clicking and dragging the mouse across text).

```CSS
::selection {
    background-color: cyan;
}
```

## ::slotted()
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::slotted>

## ::spelling-error
Example: <https://developer.mozilla.org/en-US/docs/Web/CSS/::spelling-error>