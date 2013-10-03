# Corduroy
A small collection of commonly used Sass functions, mixins and placeholders.


## Installation

```bash
$ component install mkitt/corduroy
```

## Usage

## Todo
- Allow speed and easing values to be configurable
- More modular builds?
- Make the repo public
- Add component.io integration
- Add vertical rhythm Sass functions

## Defaults
The following variables are set as the default and should be overridden
prior to calling a mixin or extending a placeholder.

```sass
$context-px: 16 !default
$speed: 0.25s !default
```

## Functions
Utility functions.

** Note: By default the variable `$context-px` used for the optional
second parameter in `#em`, `#rem` and `#unit_less`is set to `16`. To
override this value, set it prior to using one of these functions.

#### em($px, $context:$context-px)
Convert a unitless `pixel` value to an `em` value. Takes an optional
second parameter as the context. 

#### rem($px, $context:$context-px)
Convert a unitless `pixel` value to a `rem` value. Takes an optional
second parameter as the context. 

#### unit_less($px, $context:$context-px)
Divide a unitless `pixel` value by a `context`, similar to the `#rem`
function except the value returned does not contain a unit of
measurement.

#### percent($px, $context)
Converts a target `px` value to a percentage constrained within a
context.

#### shade($color, $percent)
Mix black into a color by a certain percentage.

#### tint($color, $percent)
Mix white into a color by a certain percentage.


## Mixins
Most mixins also come with a placeholder for use with `@extend`. These
are noted below.

#### +tab-focus
Resets the normal browser behavior for tab focusable content.
_Includes placeholder_

#### +font-face($font-family, $file-path, $font-weight:normal, $font-style:normal, $asset-pipeline:false)
One-liner for loading custom fonts with all the crazy path options. Pass `$asset-pipeline:true` to use the Rails helper. 
Borrowed from [Thoughtbot's](http://thoughtbot.com/) excellent [Bourbon library](http://bourbon.io/).

#### +clearfix
The [new micro clearfix](http://www.css-101.org/articles/clearfix/latest-new-clearfix-so-far.php)
utilizing pseudo elements to clear floats.
_Includes placeholder_

#### +sticky-footer($footer-height, $outer:".main", $inner:".content", $footer:".footer")
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

#### +unsticky-footer($outer:".main", $inner:".content", $footer:".footer")
Reverse the effects of the `sticky-footer` mixin, primarily used in
`max-width` media queries. Ensure the selector names match what was
passed within the `sticky-footer` mixin.

#### +shape($width:6rem, $height:4rem, $border-radii:false)
Generic shape mixin, primarily used by other shape like mixin's.

#### +rectangle($width:6rem, $height:4rem, $border-radii:false)
Draws a rectangle shape.

#### +square($size:4rem, $border-radii:false)
Draws a square shape.

#### +circle($size:4rem)
Draws a circle shape.

#### +oval($width:6rem, $height:4rem)
Draws an oval shape.

#### +triangle($direction, $size:1rem, $color:black)
Draws a triangle shape in the direction passed.
Possible direction values are: `up`, `down`, `right`, `left`, `up-right`, `up-left`, `down-right`, `down-left`.
Or use the cardinal positions: `north`, `south`, `east`, `west`, `north-east`, `north-west`, `south-west`, `south-east`.

#### +hidden
Totally hidden from screen readers and browsers.
_Includes placeholder_

#### +shown
Reverse the effects of `.hidden`.
_Includes placeholder_

#### +invisible
Hide visually and from screenreaders, but maintain layout.
_Includes placeholder_

#### +visuallyhidden
Only visually hidden, still available to screen readers.
_Includes placeholder_

#### +visuallyshown
Reverse the settings applied by `.visuallyhidden`.
_Includes placeholder_

#### +image-replacement
Prep an element to replace it's contents with a `background-image`.
_Includes placeholder_

#### +checkbox-hack
Hide an element (typically a checkbox) when using a connected label to
control behaviors.
_Includes placeholder_


## Movement
Placeholders for transition and animation control.

#### $bezier
A slew of various `cubic-bezier` variables based on [Robert Penner's
easing equations](http://www.robertpenner.com/easing/).

#### %hardware-accelerate
Enable hardware acceleration for an element.

#### %transition-all
Transition all properties on an element.

#### %transition-transform
Transition the `transform` property on an element.

#### %transition-color
Transition the `color` property on an element.

#### %transition-background-color
Transition the `background-color` property on an element.

#### %transition-background-border-color
Transition the `background-color` and `border-color` properties on an element.

#### %transition-visibility
Transition the `opacity` and `visibility` properties on an element.
Typically used with `%transition-hide` and `%transition-show`.

#### %transition-hide
Set the `opacity` and `visibility` properties for use with
`%transition-visibility`.

#### %transition-show
Set the `opacity` and `visibility` properties for use with
`%transition-visibility`.

#### %transition-opacity
Transition the `opacity` property on an element.
Typically used with `%transition-fade-out` and `%transition-fade-in`.

#### %transition-fade-out
Set the `opacity` level to `0` for use with `%transition-opacity`.

#### %transition-fade-in
Set the `opacity` level to `1` for use with `%transition-opacity`.

#### %transition-height
Transition the `height` property on an element.
Typically used with `%transition-collapse` and `%transition-collapse-in`.

#### %transition-collapse
Set properties related to transitioning a `height` for use with
`%transition-height`.

#### %transition-collapse-in
Set properties related to transitioning a `height` for use with
`%transition-height`.

#### +animate-rotation($start:0deg, $end:360deg)
Mixin the `@keyframes` animation for rotation.

#### %animation-spin
Extend an infinite rotation animation. Used with the `+animate-rotation` mixin. 

