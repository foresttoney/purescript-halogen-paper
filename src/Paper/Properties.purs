module Paper.Properties
  ( active
  , alwaysFloatLabel
  , animated
  , animatedShadow
  , elevation
  , fadeImage
  , focused
  , heading
  , icon
  , image
  , invalid
  , label
  , mini
  , noink
  , noLabelFloat
  , placeholderImage
  , pointerDown
  , preloadImage
  , pressed
  , raised
  , receivedFocusFromKeyboard
  , stopKeyboardEventPropagation
  , toggles
  )
  where

import Halogen.HTML.Core (PropName(..))
import Halogen.HTML.Properties (IProp, prop)

active ∷ ∀ r i. Boolean → IProp (active ∷ Boolean | r) i
active = prop (PropName "active")

alwaysFloatLabel ∷ ∀ r i. Boolean → IProp (alwaysFloatLabel ∷ Boolean | r) i
alwaysFloatLabel = prop (PropName "always-float-label")

animated ∷ ∀ r i. Boolean → IProp (animated ∷ Boolean | r) i
animated = prop (PropName "animated")

animatedShadow ∷ ∀ r i. Boolean → IProp (animatedShadow ∷ Boolean | r) i
animatedShadow = prop (PropName "animated-shadow")

elevation ∷ ∀ r i. Int → IProp (elevation ∷ Int | r) i
elevation = prop (PropName "elevation")

fadeImage ∷ ∀ r i. Boolean → IProp (fakeImage ∷ Boolean | r) i
fadeImage = prop (PropName "fade-image")

focused ∷ ∀ r i. Boolean → IProp (focused ∷ Boolean | r) i
focused = prop (PropName "focused")

heading ∷ ∀ r i. String → IProp (heading ∷ String | r) i
heading = prop (PropName "heading")

icon ∷ ∀ r i. String → IProp (icon ∷ String | r) i
icon = prop (PropName "icon")

image ∷ ∀ r i. String → IProp (image ∷ String | r) i
image = prop (PropName "image")

invalid ∷ ∀ r i. Boolean → IProp (invalid ∷ Boolean | r) i
invalid = prop (PropName "invalid")

label ∷ ∀ r i. String → IProp (label ∷ String | r) i
label = prop (PropName "label")

mini ∷ ∀ r i. Boolean → IProp (mini ∷ Boolean | r) i
mini = prop (PropName "mini")

noink ∷ ∀ r i. Boolean → IProp (noink ∷ Boolean | r) i
noink = prop (PropName "noink")

noLabelFloat ∷ ∀ r i. Boolean → IProp (noLabelFloat ∷ Boolean | r) i
noLabelFloat = prop (PropName "no-label-float")

placeholderImage ∷ ∀ r i. String → IProp (placeholderImage ∷ String | r) i
placeholderImage = prop (PropName "placeholder-image")

pointerDown ∷ ∀ r i. Boolean → IProp (pointerDown ∷ Boolean | r) i
pointerDown = prop (PropName "pointer-down")

preloadImage ∷ ∀ r i. Boolean → IProp (preloadImage ∷ Boolean | r) i
preloadImage = prop (PropName "preload-image")

pressed ∷ ∀ r i. Boolean → IProp (pressed ∷ Boolean | r) i
pressed = prop (PropName "pressed")

raised ∷ ∀ r i. Boolean → IProp (raised ∷ Boolean | r) i
raised = prop (PropName "raised")

receivedFocusFromKeyboard ∷ ∀ r i. Boolean → IProp (receivedFocusFromKeyboard ∷ Boolean | r) i
receivedFocusFromKeyboard = prop (PropName "received-focus-from-keyboard")

src ∷ ∀ r i. String → IProp (src ∷ String | r) i
src = prop (PropName "src")

stopKeyboardEventPropagation ∷ ∀ r i. Boolean → IProp (stopKeyboardEventPropagation ∷ Boolean | r) i
stopKeyboardEventPropagation = prop (PropName "stop-keyboard-event-propagation")

toggles ∷ ∀ r i. Boolean → IProp (toggles ∷ Boolean | r) i
toggles = prop (PropName "toggles")