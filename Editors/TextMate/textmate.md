[TextMate: Hidden Settings](https://github.com/textmate/textmate/wiki/Hidden-Settings)

# Controlling Font Smoothing
Font smoothing refers to sub-pixel anti-alias on LCD screens. Apple’s font smoothing algorithm will often make light text on dark backgrounds appear bolder than the same text on a bright background.

For this reason, TextMate disables font smoothing for dark themes on high-DPI displays (retina Mac).

You can control the behavior with:

```
defaults write com.macromates.TextMate fontSmoothing «value»
```

Here «value» can be:

0: Always disabled.
1: Always enabled.
2: Disabled for dark themes.
3: Disabled for dark themes on high-DPI displays (default).
If you wish to restore the default value (3) it’s better to run the following, rather than explicitly setting the value to 3:

```
defaults delete com.macromates.TextMate fontSmoothing
```