module Paper.Indexed 
  ( HTMLpaperButton
  , HTMLpaperCheckbox
  , HTMLpaperCard
  , HTMLpaperFab
  , HTMLpaperInput
  , IronButtonState
  , IronControlState
  , IronA11yKeysBehavior
  , PaperRippleBehavior
  , PaperButtonBehavior
  , PaperButton 
  )
  where

import Prelude

import DOM.Event.Types (Event, EventTarget)
import DOM.HTML.Indexed (Interactive, HTMLbutton)
import DOM.HTML.Indexed.InputType (InputType)
import DOM.HTML.Indexed.OnOff (OnOff)
import DOM.HTML.Indexed.StepValue (StepValue)
import Data.MediaType (MediaType)

-- | omitted:
-- | keyBindings
type IronA11yKeysBehavior r =
  ( keyEventTarget :: EventTarget
  , stopKeyboardEventPropagation :: Boolean
  | r
  )

-- | omitted:
-- | keyBindings
type IronButtonState r = IronA11yKeysBehavior
  ( active :: Boolean
  , ariaActiveAttribute :: String
  , pointerDown :: Boolean
  , pressed :: Boolean
  , receivedFocusFromKeyboard :: Boolean
  , toggles :: Boolean
  | r
  )

type IronControlState r =
  ( disabled :: Boolean
  , focused :: Boolean
  | r
  )

type PaperRippleBehavior r =
  ( noink :: Boolean
  | r
  )

type PaperButtonBehavior r = IronControlState
  ( IronButtonState
    ( PaperRippleBehavior
      ( elevation :: Int
      | r
      )
    )
  )

type PaperButton r = PaperButtonBehavior
  ( raised :: Boolean
  | r
  )

type HTMLpaperButton = PaperButton HTMLbutton

type HTMLpaperCard = Interactive 
  ( alt ∷ String
  , animated ∷ Boolean
  , animatedShadow :: Boolean
  , elevation ∷ Int
  , fadeImage ∷ Boolean
  , heading ∷ String
  , image ∷ String
  , placeholderImage ∷ String
  , preloadImage ∷ Boolean
  )

type HTMLpaperCheckbox = Interactive 
  ( active ∷ Boolean
  , checked ∷ Boolean
  , disabled ∷ Boolean 
  , focused ∷ Boolean
  , invalid ∷ Boolean
  , name ∷ String
  , noink ∷ Boolean
  , pointerDown ∷ Boolean
  , pressed ∷ Boolean
  , receivedFocusFromKeyboard ∷ Boolean
  , required ∷ Boolean
  , stopKeyboardEventPropagation ∷ Boolean
  , toggles ∷ Boolean
  , value ∷ String 
  )

type HTMLpaperFab = Interactive
  ( active ∷ Boolean
  , disabled ∷ Boolean
  , elevation ∷ Boolean
  , focused ∷ Boolean
  , icon ∷ String
  , label ∷ String
  , mini ∷ Boolean
  , noink ∷ Boolean
  , pointerDown ∷ Boolean
  , pressed ∷ Boolean
  , receivedFocusFromKeyboard ∷ Boolean
  , src ∷ String
  , stopKeyboardEventPropagation ∷ String
  , toggles ∷ Boolean
  )

type HTMLpaperInput = Interactive
  ( accept :: MediaType
  , allowedPattern ∷ String
  , alwaysFloatLabel ∷ Boolean
  , autocapitalize ∷ String
  , autocomplete ∷ OnOff
  , autocorrect ∷ OnOff
  , autofocus ∷ Boolean
  , autosave ∷ String
  , autoValidate ∷ Boolean
  , charCounter ∷ Boolean
  , disabled ∷ Boolean
  , errorMessage ∷ String
  , focused ∷ Boolean
  , inputmode ∷ String
  , invalid ∷ Boolean
  , label ∷ String
  , list ∷ String
  , max ∷ Number
  , maxlength ∷ Int
  , min ∷ Number
  , minlength ∷ Int
  , multiple ∷ Boolean
  , name ∷ String
  , noLabelFloat ∷ Boolean 
  , pattern ∷ String
  , placeholder ∷ String
  , readonly ∷ Boolean
  , required ∷ Boolean
  , results ∷ Int
  , size ∷ Int
  , step ∷ StepValue
  , stopKeyboardEventPropagation ∷ Boolean
  , "type" ∷ InputType
  , validator ∷ String
  , value ∷ String
  , onChange :: Event
  , onInput ∷ Event 
  )