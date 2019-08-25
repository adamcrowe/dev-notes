# Structural Pseudo-Classes
> A structural pseudo-class targets an element(s) based on its location in the markup.

## :empty
> `:empty` represents any element that has no children.

```CSS
.box {
    background: pink;
    height: 80px;
    width: 80px;
}

.box:empty {
    background: lime;
}
```

```HTML
<div class="box"><!-- I will be lime. --></div>
<div class="box">I will be pink.</div>
<div class="box">
    <!-- I will be pink because of the whitespace around this comment. -->
</div>
```

## :first-child
> `:first-child` represents the first element among a group of sibling elements.

```CSS
p:first-child {
    color: lime;
    background-color: black;
    padding: 5px;
}
```

```HTML
<div>
    <p>This text is lime!</p>
    <p>This text isn't lime.</p>
</div>

<div>
    <h2>This text isn't lime: it's not a `p`.</h2>
    <p>This text isn't lime becausse it's not a first child.</p>
</div>
```

```CSS
ul li {
    color: blue;
}

ul li:first-child {
    color: red;
    font-weight: bold;
}
```

```HTML
<ul>
    <li>Item 1</li> <!-- red -->
    <li>Item 2</li> <!-- blue -->
    <li>Item 3 <!-- blue -->
        <ul>
            <li>Item 3.1</li> <!-- red -->
            <li>Item 3.2</li> <!-- blue -->
            <li>Item 3.3</li> <!-- blue -->
        </ul>
    </li>
</ul>
```

## :first-of-type
> `:first-of-type` represents the first element of its type among a group of sibling elements.

```CSS
p:first-of-type {
    color: red;
    font-style: italic;
}
```

```HTML
<h2>Heading</h2>
<p>Paragraph 1</p> <!-- red -->
<p>Paragraph 2</p> <!-- not red -->
```

## :lang(en)
> `:lang()` matches elements based on the language they are determined to be in.

```CSS
:lang(en) > q { quotes: '\201C' '\201D' '\2018' '\2019'; }
:lang(fr) > q { quotes: '« ' ' »'; }
:lang(de) > q { quotes: '»' '«' '\2039' '\203A'; }
```

```HTML
<div lang="en"><q>This English quote has a <q>nested</q> quote inside.</q></div>
<div lang="fr"><q>This French quote has a <q>nested</q> quote inside.</q></div>
<div lang="de"><q>This German quote has a <q>nested</q> quote inside.</q></div>
```

## :last-child
> `:last-child` represents the last element among a group of sibling elements.

```CSS
p:last-child {
    color: lime;
    background-color: black;
    padding: 5px;
}
```

```HTML
<div>
    <p>This text isn't lime.</p>
    <p>This text is lime!</p>
</div>

<div>
    <p>This text isn't lime because it's not a last child.</p>
    <h2>This text isn't selected: it's not a `p`.</h2>
</div>
```

## :last-of-type
> `:last-of-type` represents the last element of its type among a group of sibling elements.

```CSS
p:last-of-type {
    color: red;
    font-style: italic;
}
```

```HTML
<h2>Heading</h2> <!-- not red -->
<p>Paragraph 1</p> <!-- not red -->
<p>Paragraph 2</p> <!-- red -->
```

## :not(exception)
> `:not()` represents elements that do not match a list of selectors. Since it prevents specific items from being selected, it is known as the negation pseudo-class.

```CSS
.fancy {
    text-shadow: 2px 2px 3px gold;
}

/* <p> elements that are not in the class `.fancy` */
p:not(.fancy) {
    color: green;
}

/* Elements that are not <p> elements */
body :not(p) {
    text-decoration: underline;
}

/* Elements that are not <div> and not <span> elements */
body :not(div):not(span) {
    font-weight: bold;
}

/* Elements that are not `.crazy` or `.fancy` */
/* Note that this syntax is not well supported yet. */
body :not(.crazy, .fancy) {
    font-family: sans-serif;
}
```

```HTML
<p>I am a paragraph.</p> <!--- green and bold -->
<p class="fancy">I am so very fancy!</p> <!-- fancy -->
<div>I am NOT a paragraph.</div> <!-- underline -->
```

## :nth-child(n)
> `:nth-child()` matches elements based on their position in a group of siblings.

```CSS
/* Selects every fourth element among any group of siblings */
:nth-child(4n) {
    color: lime;
}
```

```CSS
tr:nth-child(odd) or tr:nth-child(2n+1) /* Odd rows of an HTML table: 1, 3, 5, etc */
tr:nth-child(even) or tr:nth-child(2n) /* Even rows of an HTML table: 2, 4, 6, etc */
:nth-child(7) /* Seventh element */
:nth-child(5n) /* Elements 5 [=5×1], 10 [=5×2], 15 [=5×3], etc */
:nth-child(3n+4) /* Elements 4 [=(3×0)+4], 7 [=(3×1)+4], 10 [=(3×2)+4], 13 [=(3×3)+4], etc */
:nth-child(-n+3) /* First three elements [=-0+3, -1+3, -2+3] */
p:nth-child(n) /* Every <p> element in a group of siblings. This selects the same elements as a simple p selector (although with a higher specificity). */
p:nth-child(1) or p:nth-child(0n+1) /* Every <p> that is the first element in a group of siblings. This is the same as the :first-child selector (and has the same specificity). */
p:nth-child(n+8):nth-child(-n+15) /* Eighth through the fifteenth <p> elements of a group of siblings. */
```

Detailed example: <https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-child>

## :nth-last-child(n)
> `:nth-last-child()` matches elements based on their position among a group of siblings, counting from the end.

```CSS
/* Selects every fourth element among any group of siblings, counting backwards from the last one */
:nth-last-child(4n) {
    color: lime;
}
```

```CSS
tr:nth-last-child(odd) or tr:nth-last-child(2n+1) /* Odd rows of an HTML table: 1, 3, 5, etc., counting from the end */
tr:nth-last-child(even) or tr:nth-last-child(2n) /* Even rows of an HTML table: 2, 4, 6, etc., counting from the end. */
:nth-last-child(7) /* Seventh element, counting from the end. */
:nth-last-child(5n) /* Elements 5, 10, 15, etc., counting from the end. */
:nth-last-child(3n+4) /* Elements 4, 7, 10, 13, etc., counting from the end. */
:nth-last-child(-n+3) /* The last three elements among a group of siblings. */
p:nth-last-child(n) or p:nth-last-child(n+1) /* Every <p> element among a group of siblings. This is the same as a simple p selector. */
/* (Since n starts at zero, while the last element begins at one, n and n+1 will both select the same elements.) */
p:nth-last-child(1) or p:nth-last-child(0n+1) /* Every <p> that is the first element among a group of siblings, counting from the end. This is the same as the :last-child selector. */
```

Detailed example: <https://developer.mozilla.org/en-US/docs/Web/CSS/:nth-last-child>

## :nth-last-of-type(n)
> `:nth-last-of-type()` matches elements of a given type, based on their position among a group of siblings, counting from the end.

```CSS
/* Selects every fourth <p> element among any group of siblings, counting backwards from the last one */
p:nth-last-of-type(4n) {
    color: lime;
}
```

```CSS
span:nth-last-of-type(2) {
    background-color: lime;
}
```

```HTML
<div>
    <span>This is a span.</span>
    <span>This is another span.</span>
    <em>This is emphasized.</em>
    <span>Wow, this span gets limed!!!</span> <!-- lime -->
    <strike>This is struck through.</strike>
    <span>Here is one last span.</span>
</div>
```

## :nth-of-type(n)
> `:nth-of-type()` matches elements of a given type, based on their position among a group of siblings.

```CSS
/* Selects every fourth <p> element among any group of siblings */
p:nth-of-type(4n) {
    color: lime;
}
```

```CSS
p:nth-of-type(2n+1) { color: red; } /* Odd paragraphs */
p:nth-of-type(2n) { color: blue; } /* Even paragraphs */
p:nth-of-type(1) { font-weight: bold; } /* First paragraph */
```

```HTML
<div>
    <div>This element isn't counted.</div>
    <p>1st paragraph.</p> <!-- red -->
    <p>2nd paragraph.</p> <!-- blue -->
    <div>This element isn't counted.</div>
    <p>3rd paragraph.</p> <!-- red -->
    <p>4th paragraph.</p> <!-- blue -->
</div>
```

## :only-child
> `:only-child` represents an element without any siblings. This is the same as `:first-child:last-child` or `:nth-child(1):nth-last-child(1)`, but with a lower specificity.


```CSS
div:only-child {
    color: red;
}

div {
    display: inline-block;
    margin: 6px;
    outline: 1px solid;
}
```

```HTML
<div>
    <div>I am an only child.</div>
</div>

<div>
    <div>I am the 1st sibling.</div>
    <div>I am the 2nd sibling.</div>
    <div>I am the 3rd sibling, <div>but this is an only child.</div></div>
</div>
```

## :only-of-type
> `:only-of-type` represents an element that has no siblings of the same type.

```CSS
main :only-of-type {
    color: red;
}
```

```HTML
<main>
    <div>I am `div` #1.</div>
    <p>I am the only `p` among my siblings.</p> <!-- red -->
    <div>I am `div` #2.</div>
    <div>I am `div` #3.
        <i>I am the only `i` child.</i> <!-- red -->
        <em>I am `em` #1.</em>
        <em>I am `em` #2.</em>
    </div>
</main>
```

## :root
> `:root` matches the root element of a tree representing the document. In HTML, `:root` represents the `<html>` element and is identical to the selector `html`, except that its specificity is higher.

```CSS
/* Selects the root element of the document: <html> in the case of HTML */
:root {
    background: yellow;
}
/* :root can be useful for declaring global CSS variables: */
:root {
    --main-color: hotpink;
    --pane-padding: 5px 42px;
}
```