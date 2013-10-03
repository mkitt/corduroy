# Corduroy
A small collection of commonly used Sass functions, mixins and placeholders.


## Installation

```bash
$ component install mkitt/corduroy
```

## Usage


## Defaults
The following variables are set as the default and should be overridden
prior to calling a mixin or extending a placeholder if needed.

```sass
$context-px: 16 !default
```

## Functions
Utility functions and variables.

### [bezier variables](functions/_bezier.sass)
A slew of various `cubic-bezier` variables based on [Robert Penner's
easing equations](http://www.robertpenner.com/easing/).


### [color functions](functions/_color.sass)

#### shade($color, $percent)
Mix black into a color by a certain percentage.

#### tint($color, $percent)
Mix white into a color by a certain percentage.


### [measurement functions](functions/_measurement.sass)

#### em($px, $context:$context-px)
Convert a unit less `pixel` value to an `em` value. Takes an optional
second parameter as the context. 

#### rem($px, $context:$context-px)
Convert a unit less `pixel` value to a `rem` value. Takes an optional
second parameter as the context. 

#### unit-less($px, $context:$context-px)
Divide a unit less `pixel` value by a `context`, similar to the `#rem`
function except the value returned does not contain a unit of
measurement.

#### percent($px, $context)
Converts a target `px` value to a percentage constrained within a
context.

** Note: By default the variable `$context-px` used for the optional
second parameter in `#em`, `#rem` and `#unit_less`is set to `16`. To
override this value, set it prior to using one of these functions.


## Mixins
Most mixins also come with a placeholder for use with `@extend`. These
are noted below.

#### [+clearfix](mixins/_clearfix.sass)
The [new micro clearfix](http://www.css-101.org/articles/clearfix/latest-new-clearfix-so-far.php)
utilizing pseudo elements to clear floats.
_Includes placeholder_

#### [+font-face($family, $file-path, $weight:normal, $style:normal, $pipeline:false)](mixins/_font_face.sass)
One-liner for loading custom fonts with all the crazy path options. Pass `$pipeline:true` to use the Rails helper. 
Borrowed from [Thoughtbot's](http://thoughtbot.com/) excellent [Bourbon library](http://bourbon.io/).


### [movement mixins](mixins/_movement.sass)

#### +hardware-accelerate
Enable hardware acceleration for an element.
_Includes placeholder_


### [shape mixins](mixins/_shape.sass)

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
Or use cardinal positions: `north`, `south`, `east`, `west`, `north-east`, `north-west`, `south-east`, `south-west`.


### [visibility mixins](mixins/_visibility.sass)
Most of these courtesy of [H5BP](http://html5boilerplate.com/).

#### +hidden
Totally hidden from screen readers and browsers.
_Includes placeholder_

#### +shown
Reverse the effects of `+hidden`.
_Includes placeholder_

#### +conceal
Hide visually and from screenreaders, but maintain layout.
_Includes placeholder_

#### +invisible
Hide visually and remove from layout. (useful for the checkbox hack)
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

## Snippets
These files are typically used for reference only. You can import them,
but it's usually easier to just drop them into a project and configure
them from there.

- [transition.sass](snippets/_transition.sass): placeholders for common transition properties
- [animation.sass](snippets/_animation.sass): mixin and placeholders for common `@keyframe` animations
- [sticky_footer.sass](snippets/_sticky_footer.sass): mixins for creating and releasing a sticky footer structure
- [tab_focus.sass](snippets/_tab_focus.sass): mixin and placeholder for resetting the browser styles for tab focusable elements


## Todo
- Add vertical rhythm Sass functions
- Add modular scale measurements

