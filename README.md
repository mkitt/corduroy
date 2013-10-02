# Corduroy
A small collection of Sass functions, mixins and placeholders.

## Tasks
- Abstract speed values
- Add vertical rhythm Sass functions
- Document
- Test outputs
- Make the repo public
- Add bower/component/gem integration


## Functions

### [em($px, $context)](lib/functions/_conversion.sass)
Convert a unitless `pixel` value to an `em` value. Takes an optional
second parameter as the context. 

```sass
@import corduroy/lib/functions/_conversion

.heading
  font-size: em(20) // outputs: font-size: 1.25em

.subheading
  font-size: em(24, 12) // outputs: font-size: 2em
```

** Note: By default the variable `$context-px` used for the optional
second parameter is set to `16`. To override this value, set it prior to
using this function.

### [rem($px, $context)](lib/functions/_conversion.sass)
Convert a unitless `pixel` value to a `rem` value. Takes an optional
second parameter as the context. 

```sass
@import corduroy/lib/functions/_conversion

.heading
  font-size: rem(20) // outputs: font-size: 1.25rem

.subheading
  font-size: rem(24, 12) // outputs: font-size: 2rem
```

** Note: By default the variable `$context-px` used for the optional
second parameter is set to `16`. To override this value, set it prior to
using this function.

### [unitless_rem($px, $context)](lib/functions/_conversion.sass)
Divide a unitless `pixel` value by a `context`, similar to the `#rem`
function except the value returned does not contain a unit.

```sass
@import corduroy/lib/functions/_conversion

.heading
  line-height: unitless_rem(20) // outputs: line-height: 1.25rem

.subheading
  line-height: unitless_rem(24, 12) // outputs: line-height: 2rem
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


