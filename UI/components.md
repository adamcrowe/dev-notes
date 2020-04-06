* See `../JS/Frameworks/React` ARCHITECTURE section for component composition

# Layout-Isolated Components
> Layout-isolated component: A component that is unaffected by the parent it is placed within, and does not itself affect the size and position of its siblings.

> Essentially, we want to avoid any properties on the root element of a component that affect, or are affected by, elements outside of the bounds of that component.

> I would discourage properties like `margin`, because they act on elements outside of the component's scope; the same goes for properties like `align-self`, as it will stretch the width or height of the component depending on the `flex-direction` of its parent. In contrast, properties like `padding` are fine, as they are confined to the scope of the component. Basically, if a property depends on, or impacts, other components outside of its scope, I would discourage using it.

## Conclusion
* Build your components to be reusable; you never know where you'll end up needing them.
* Add a style prop to your components so that layout responsibility is shifted to the parent.
* Update your global CSS and disable default flex shrink: `* { flex-shrink: 0; }`.
* Use `<Spacer/>` components or stack spacing instead of `margin` to make code easier to move around.

### References
[Layout-isolated components](https://visly.app/blog/layout-isolated-components)