# Universal selector
* `universal selector` (*) matches elements of any type.

```CSS
/* Selects all elements */
* {
    color: green;
}
```

* Beginning with CSS3, the asterisk may be used in combination with namespaces:
* `ns|*` - matches all elements in namespace `ns`
* `*|*` - matches all elements
* `|*` - matches all elements without any declared namespace

```CSS
* [lang^=en] { /* starts with "en" */
    color: green;
}

*.warning {
    color: red;
}

*#maincontent {
    border: 1px solid blue;
}

.floating {
    float: left
}

/* automatically clear the next sibling after a floating element */
.floating + * {
    clear: left;
}
```

```HTML
<p class="warning">
  	<span lang="en-us">A green span</span> in a red paragraph.
</p>
<p id="maincontent" lang="en-gb">
 	<span class="warning">A red span</span> in a green paragraph.
</p>
```