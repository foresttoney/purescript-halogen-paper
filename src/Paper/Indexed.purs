module Paper.Indexed 
  ( HTMLpaperButton
  , HTMLpaperCheckbox
  , HTMLpaperCard
  , HTMLpaperFab
  , HTMLpaperInput
  )
  where

import Data.MediaType (MediaType)
import DOM.Event.Types (Event)
import DOM.HTML.Indexed (Interactive)
import DOM.HTML.Indexed.InputType (InputType)
import DOM.HTML.Indexed.OnOff (OnOff)
import DOM.HTML.Indexed.StepValue (StepValue)

type HTMLpaperButton = Interactive 
  ( active ∷ Boolean
  , disabled ∷ Boolean
  , elevation ∷ Int
  , focused ∷ Boolean
  , noink ∷ Boolean
  , pointerDown ∷ Boolean
  , pressed ∷ Boolean
  , raised ∷ Boolean
  , receivedFocusFromKeyboard ∷ Boolean
  , stopKeyboardEventPropagation ∷ Boolean
  , toggles ∷ Boolean
  )

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