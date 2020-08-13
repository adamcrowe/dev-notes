# BEM (Block Element Modifier)
> The Block, Element, Modifier methodology (commonly referred to as BEM) is a popular naming convention for classes in HTML and CSS. ~ [BEM 101](https://css-tricks.com/bem-101)

```css
/**
 * The top-level ‘Block’ of a component.
 */
.modal {}
    /**
     * An ‘Element’ that is a part of the larger Block.
     */
    .modal__title {}
/**
 * A ‘Modifier’ of the Block.
 */
.modal--large {}
```

```html
<div class="modal  modal--large">
    <h1 class="modal__title">Sign into your account</h1>
    <div class="modal__content">
        <form class="form-login">
        </form>
    </div>
</div>
```

> The point of BEM is to tell other developers more about what a piece of markup is doing from its name alone. By reading some HTML with some classes in, you can see how – if at all – the chunks are related; something might just be a component, something might be a child, or element, of that component, and something might be a variation or modifier of that component. To use an analogy/model, think how the following things and elements are related: ~ [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)

```css
.person {}
.person__hand {}
.person--female {}
.person--female__hand {}
.person__hand--left {}
```
> The top-level block is a ‘person’ which has elements, for example, ‘hand’. A person also has variations, such as female, and that variation in turn has elements. This again, but written in ‘normal’ CSS: ~ [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)

```css
.person {}
.hand {}
.female {}
.female-hand {}
.left-hand {}
```

> These all make sense, but are somewhat disconnected. Take .female for example; female what? What about .hand; a hand of a clock? A hand in a game of cards? By using BEM we can be more descriptive but also a lot more explicit; we tie concrete links to other elements of our code through naming alone. Powerful stuff. ~ [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)

```html
<form class="site-search  full">
    <input type="text" class="field">
    <input type="Submit" value ="Search" class="button">
</form>
```
> These classes are fairly loose, and don’t tell us much. Even though we can work it out, they’re very inexplicit. With BEM notation we would now have: ~ [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)

```html
<form class="site-search  site-search--full">
    <input type="text" class="site-search__field">
    <input type="Submit" value ="Search" class="site-search__button">
</form>
```

> We can see that we have a block called .site-search which has an element which lives inside it called .site-search__field. We can also see that there is a variation of the .site-search called .site-search--full. ~ [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)

# References
* [BEM: Methodology](https://en.bem.info/methodology)
* [Getting your head around BEM syntax](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax)
* [More Transparent UI Code with Namespaces](https://csswizardry.com/2015/03/more-transparent-ui-code-with-namespaces)
* [BEMIT: Taking the BEM Naming Convention a Step Further](https://csswizardry.com/2015/08/bemit-taking-the-bem-naming-convention-a-step-further)
