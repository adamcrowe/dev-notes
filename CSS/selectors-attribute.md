# Attribute Selectors
> Attribute selectors allow for matching elements based on their attributes.

## E[attr]
> Matches any element E that has the attribute `attr` regardless of the attribute’s value e.g., `input[required]` (or `input:required`).

## E[attr=val]
> Matches any element E that has the attribute `attr` with the exact value `val` e.g. `input[type=checkbox]`.

## E[attr|=val]
> Matches any element E whose attribute `attr` either has the value `val` or begins with `val-`. This is most commonly used for the lang attribute. For example, `p[lang|="en"]` would match any paragraph that has been defined as being in English whether it be UK or US English `lang="en-uk"` or `lang="en-us"`.

## E[attr~=val]
> Matches any element E whose attribute `attr` has within its value the full word `val`, surrounded by whitespace. For example, `.info[title~=more]` would match any element with the class info that had a `title` attribute containing the word “more,” such as “Click here for more information.”

## E[attr^=val]
> Matches any element E whose attribute `attr` starts with the value `val`. In other words, the `val` matches the beginning of the attribute value.

## E[attr$=val]
> Matches any element E whose attribute `attr` ends in `val`. In other words, the `val` matches the end of the attribute value.

## E[attr*=val]
> Matches any element E whose attribute `attr` matches `val` anywhere within the attribute. It is similar to E[attr~=val], except the `val` can be part of a word. Using the same example as before, `.fakelink[title*=info]` would match any element with the class `fakelink` that has a title attribute containing the string `info`, such as “Click here for more information.”

## E[attr*=val i]
> Case insensitive.