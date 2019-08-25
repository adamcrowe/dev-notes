# State Pseudo-Classes
> A state pseudo-class is a keyword added to a selector that specifies a special state of the selected element(s).

## :active
> `:active` represents an element (such as a button) that is being activated by the user. When using a mouse, "activation" typically starts when the user presses down the primary mouse button.

```CSS
/* Selects any <a> that is being activated */
a:active {
    color: red;
}
```

## :checked
> `:checked` represents any radio (`<input type="radio">`), checkbox (`<input type="checkbox">`), or option (`<option>` in a `<select>`) element that is checked or toggled to an on state.

```CSS
/* Matches any checked/selected radio, checkbox, or option */
:checked {
    margin-left: 25px;
    border: 1px solid blue;
}
```

## :default
> `:default` selects form elements that are the default in a group of related elements.

## :disabled
> `:disabled` represents any disabled element. An element is disabled if it can't be activated (selected, clicked on, typed into, etc.) or accept focus. The element also has an enabled state, in which it can be activated or accept focus.

```CSS
/* Selects any disabled <input> */
input:disabled {
    background: #ccc;
}
```

## :enabled
> `:enabled` represents any enabled element. An element is enabled if it can be activated (selected, clicked on, typed into, etc.) or accept focus. The element also has a disabled state, in which it can't be activated or accept focus.

```CSS
/* Selects any enabled <input> */
input:enabled {
    color: blue;
}
```

## :focus
> `:focus` represents an element (such as a form input) that has received focus. It is generally triggered when the user clicks or taps on an element or selects it with the keyboard's "tab" key.

```CSS
/* Selects any <input> when focused */
input:focus {
    color: red;
}
```

## :hover
> `:hover` matches when the user interacts with an element with a pointing device, but does not necessarily activate it. It is generally triggered when the user hovers over an element with the cursor (mouse pointer).

```CSS
/* Selects any <a> element when "hovered" */
a:hover {
    color: orange;
}
```

## :indeterminate
> `:indeterminate` represents any form element whose state is indeterminate.

```CSS
/* Selects any <input> whose state is indeterminate */
input:indeterminate {
    background: lime;
}
```

## :invalid
> `:invalid` represents any `<input>` or other `<form>` element whose contents fail to validate.

```CSS
/* Selects any invalid <input> */
input:invalid {
    background-color: pink;
}
```

## :in-range
> `:in-range` represents an <input> element whose current value is within the range limits specified by the `min` and `max` attributes.

```CSS
/* Selects any <input>, but only when it has a range
   specified, and its value is inside that range */
input:in-range {
    background-color: rgba(0, 255, 0, 0.25);
}
```

## :link
> `:link` represents an element that has not yet been visited. It matches every unvisited `<a>`, `<area>`, or `<link>` element that has an `href` attribute.

```CSS
/* Selects any <a> that has not been visited yet */
a:link {
    color: red;
}
```

## :optional
> `:optional` represents any `<input>`, `<select>`, or `<textarea>` element that does not have the required attribute set on it.

```CSS
/* Selects any optional <input> */
input:optional {
    border: 1px dashed black;
}
```

## :out-of-range
> `:out-of-range` represents an `<input>` element whose current value is outside the range limits specified by the min and max attributes.

```CSS
/* Selects any <input>, but only when it has a range
   specified, and its value is outside that range */
input:out-of-range {
    background-color: rgba(255, 0, 0, 0.25);
}
```

## :read-only
> `:read-only` represents an element (such as input or textarea) that is not editable by the user.

```CSS
/* Selects any <input> element that is read-only */
/* Supported in Firefox with a prefix */
input:-moz-read-only {
    background-color: #ccc;
}

/* Supported in Blink/WebKit/Edge without a prefix */
input:read-only {
    background-color: #ccc;
}
```

## :read-write
> ``:read-write`` represents an element (such as input or textarea) that is editable by the user.

```CSS
/* Selects any <input> element that is editable */
/* Supported in Firefox with a prefix */
input:-moz-read-write {
    background-color: #bbf;
}

/* Supported in Blink/WebKit/Edge without a prefix */
input:read-write {
    background-color: #bbf;
}
```

## :required
> `:required` represents any <input>, <select>, or <textarea> element that has the required attribute set on it.

```CSS
/* Selects any required <input> */
input:required {
    border: 1px dashed red;
}
```

## :target
> `:target` pseudo-class can be used to highlight the portion of a page that has been linked to form a table of contents.


## :valid
> `:valid` represents any `<input>` or other `<form>` element whose contents validate successfully.

```CSS
/* Selects any valid <input> */
input:valid {
    background-color: powderblue;
}
```

## :visited
> `:visited` represents links that the user has already visited. For privacy reasons, the styles that can be modified using this selector are very limited.

```CSS
/* Selects any <a> that has been visited */
a:visited {
    color: green;
}
```