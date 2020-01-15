# Inheritance

```css
.parent {
	font-size: 20px;
	line-height: 150%;
}

.child {
	font-size: 25px
	/* line-height: 30px; inherited from parent's computed value (150% * 20px = 30px) */
}
```

* The `inherit` keyword forces inheritance on a certain property
* The `initial` keyword rests a property to its initial value