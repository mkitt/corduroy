# Corduroy
A small collection of commonly used Sass functions, mixins and placeholders.


## Installation

```bash
$ component install mkitt/corduroy
```

## Tasks
- Document
- Test outputs
- Make the repo public
- Add component.io integration
- Allow speed and easing values to be configurable
- Add vertical rhythm Sass functions

## Functions
Conversion and color functions which return a value.

** Note: By default the variable `$context-px` used for the optional
second parameter in `#em`, `#rem` and `#unit_less`is set to `16`. To
override this value, set it prior to using one of these functions.

### [em($px, $context:$context-px)](functions/_conversion.sass)
Convert a unitless `pixel` value to an `em` value. Takes an optional
second parameter as the context. 

### [rem($px, $context:$context-px)](functions/_conversion.sass)
Convert a unitless `pixel` value to a `rem` value. Takes an optional
second parameter as the context. 

### [unit_less($px, $context:$context-px)](functions/_conversion.sass)
Divide a unitless `pixel` value by a `context`, similar to the `#rem`
function except the value returned does not contain a unit of
measurement.

### [percent($px, $context)](functions/_conversion.sass)
Converts a target `px` value to a percentage constrained within a
context.

### [shade($color, $percent)](functions/_coloring.sass)
Mix black into a color by a certain percentage.

### [tint($color, $percent)](functions/_coloring.sass)
Mix white into a color by a certain percentage.


## Mixins
Most mixins also come with a placeholder for use with `@extend`. These
are noted below.

### [+tab-focus](mixins/_display.sass)
Resets the normal browser behavior for tab focusable content.
_Includes placeholder_

### [+font-face($font-family, $file-path, $font-weight:normal, $font-style:normal, $asset-pipeline:false)](mixins/_font_face.sass)
One-liner for loading custom fonts with all the crazy path options. Pass `$asset-pipeline:true` to use the Rails helper. 

Borrowed from [Thoughtbot's](http://thoughtbot.com/) excellent [Bourbon library](http://bourbon.io/)

### [+clearfix](mixins/_layout.sass)
The [new micro clearfix](http://www.css-101.org/articles/clearfix/latest-new-clearfix-so-far.php)
utilizing pseudo elements to clear floats.
_Includes placeholder_

### [+sticky-footer($footer-height, $outer:".main", $inner:".content", $footer:".footer")](mixins/_layout.sass)
Creates a sticky footer for the page structure. Requires the following
markup structure, with selector names mapped to the default parameters
above.

```html
<body>
  <section class="main">
    <div class="content">
    </div>
  </section>
  <footer class="footer">
  </footer>
</body>
```

### [+unsticky-footer($outer:".main", $inner:".content", $footer:".footer")](mixins/_layout.sass)
Reverse the effects of the `sticky-footer` mixin, primarily used in
`max-width` media queries. Ensure the selector names match what was
passed within the `sticky-footer` mixin.

### [+shape($width:6rem, $height:4rem, $border-radii:false)](mixins/_shape.sass)
Generic shape mixin, primarily used by other shape like mixin's.

### [+rectangle($width:6rem, $height:4rem, $border-radii:false)](mixins/_shape.sass)
Draws a rectangle shape.

### [+square($size:4rem, $border-radii: false)](mixins/_shape.sass)
Draws a square shape.

### [+circle($size:4rem)](mixins/_shape.sass)
Draws a circle shape.

### [+oval($width:6rem, $height:4rem)](mixins/_shape.sass)
Draws an oval shape.

### [+triangle($direction, $size: 1rem, $color: black)](mixins/_shape.sass)
Draws a triangle shape in the direction passed.

Possible direction values are: `up`, `down`, `right`, `left`, `up-right`, `up-left`, `down-right`, `down-left`

Or use the cardinal positions: `north`, `south`, `east`, `west`, `north-east`, `north-west`, `south-west`, `south-east`

### [+hidden](mixins/_visibility.sass)
Totally hidden from screen readers and browsers.
_Includes placeholder_

### [+shown](mixins/_visibility.sass)
Reverse the effects of `.hidden`.
_Includes placeholder_

### [+invisible](mixins/_visibility.sass)
Hide visually and from screenreaders, but maintain layout.
_Includes placeholder_

### [+visuallyhidden](mixins/_visibility.sass)
Only visually hidden, still available to screen readers.
_Includes placeholder_

### [+visuallyshown](mixins/_visibility.sass)
Reverse the settings applied by `.visuallyhidden`.
_Includes placeholder_

### [+image-replacement](mixins/_visibility.sass)
Prep an element to replace it's contents with a `background-image`.
_Includes placeholder_

### [+checkbox-hack](mixins/_visibility.sass)
Hide an element (typically a checkbox) when using a connected label to
control behaviors.
_Includes placeholder_


## Movement
Placeholders for transition and animation control.

### [$bezier](movement/_bezier.sass)
A slew of various `cubic-bezier` variables based on [Robert Penner's
easing equations](http://www.robertpenner.com/easing/).

### [%hardware-accelerate](movement/_transition.sass)
Enable hardware acceleration for an element.

### [%transition-all](movement/_transition.sass)
Transition all properties on an element.

### [%transition-transform](movement/_transition.sass)
Transition the `transform` property on an element.

### [%transition-color](movement/_transition.sass)
Transition the `color` property on an element.

### [%transition-background-color](movement/_transition.sass)
Transition the `background-color` property on an element.

### [%transition-background-border-color](movement/_transition.sass)
Transition the `background-color` and `border-color` properties on an element.

### [%transition-visibility](movement/_transition.sass)
Transition the `opacity` and `visibility` properties on an element.
Typically used with `%transition-hide` and `%transition-show`.

### [%transition-hide](movement/_transition.sass)
Set the `opacity` and `visibility` properties for use with
`%transition-visibility`.

### [%transition-show](movement/_transition.sass)
Set the `opacity` and `visibility` properties for use with
`%transition-visibility`.

### [%transition-opacity](movement/_transition.sass)
Transition the `opacity` property on an element.
Typically used with `%transition-fade-out` and `%transition-fade-in`.

### [%transition-fade-out](movement/_transition.sass)
Set the `opacity` level to `0` for use with `%transition-opacity`.

### [%transition-fade-in](movement/_transition.sass)
Set the `opacity` level to `1` for use with `%transition-opacity`.

### [%transition-height](movement/_transition.sass)
Transition the `height` property on an element.
Typically used with `%transition-collapse` and `%transition-collapse-in`.

### [%transition-collapse](movement/_transition.sass)
Set properties related to transitioning a `height` for use with
`%transition-height`.

### [%transition-collapse-in](movement/_transition.sass)
Set properties related to transitioning a `height` for use with
`%transition-height`.

### [+animate-rotation($start:0deg, $end:360deg)](movement/_animation.sass)
Mixin the `@keyframes` animation for rotation.

### [%animation-spin](movement/_animation.sass)
Extend an infinite rotation animation. Used with the `+animate-rotation` mixin. 

