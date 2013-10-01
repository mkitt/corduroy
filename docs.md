# Corduroy
A collection of Sass functions, mixins, placeholders and settings.


## Functions

### [em](functions/_em.sass)
Convert a unitless `pixel` value to an `em` value. Takes an optional second
parameter as the context. 

```sass
@import corduroy/functions/rem

.heading
  font-size: em(20) // outputs: font-size: 1.25em

.subheading
  font-size: em(24, 12) // outputs: font-size: 2em
```

** Note: By default the variable `$context-px` used for the optional
second parameter is set to `16`. To override this value, set it prior to
using this function.

### [rem](functions/_rem.sass)
Convert a unitless `pixel` value to a `rem` value. Takes an optional second
parameter as the context. 

```sass
@import corduroy/functions/rem

.heading
  font-size: rem(20) // outputs: font-size: 1.25rem

.subheading
  font-size: rem(24, 12) // outputs: font-size: 2rem
```

** Note: By default the variable `$context-px` used for the optional
second parameter is set to `16`. To override this value, set it prior to
using this function.


## Mixins

### [clearfix](mixins/_clearfix.sass)
The [new micro clearfix](http://www.css-101.org/articles/clearfix/latest-new-clearfix-so-far.php)
utilizing pseudo elements to clear floats. Also comes with a placeholder
for use with `@extend`.

```sass
@import corduroy/mixins/clearfix

// mix it in!
.row
  +clearfix

// or extend the placeholder
.row
  @extend %clearfix
```


