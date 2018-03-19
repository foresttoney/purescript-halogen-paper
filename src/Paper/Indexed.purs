module Paper.Indexed 
  ( HTMLpaperButton
  , HTMLpaperCheckbox
  , HTMLpaperCard
  , HTMLpaperFab
  , HTMLpaperInput
  , HTMLpaperRadioButton
  , IronA11yKeysBehavior
  , IronButtonState
  , IronCheckedElementBehavior
  , IronControlState
  , IronFormElementBehavior 
  , IronValidatableBehavior
  , PaperButtonBehavior
  , PaperRadioButton
  , PaperCheckedElementBehavior
  , PaperInkyFocusBehavior
  , PaperRippleBehavior
  )
  where

import Prelude

import DOM.Event.Types (Event)
import DOM.HTML.Indexed (HTMLbutton, HTMLdiv, Interactive, HTMLinput)
import DOM.HTML.Indexed.InputType (InputType)
import DOM.HTML.Indexed.OnOff (OnOff)
import DOM.HTML.Indexed.StepValue (StepValue)
import Data.MediaType (MediaType)

-- | omitted:
-- | keyBindings
-- | keyEventTarget :: EventTarget
type IronA11yKeysBehavior r =
  ( stopKeyboardEventPropagation :: Boolean
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

type IronCheckedElementBehavior r = IronFormElementBehavior
  ( IronValidatableBehavior
    ( checked :: Boolean
    , toggle :: Boolean
    | r
    )
  )

type IronControlState r =
  ( disabled :: Boolean
  , focused :: Boolean
  | r
  )

type IronFormElementBehavior r =
  ( name :: String
  , required :: Boolean
  , value :: String
  | r
  )

type IronValidatableBehavior r =
  ( invalid :: Boolean
  , validator :: String
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

type PaperCheckedElementBehavior r = IronCheckedElementBehavior
  ( PaperInkyFocusBehavior
    (| r)
  )

-- | Omitted:
-- | autocomplete
-- | keyBindings
-- | inputmode
-- | list
-- | type

-- | Omitted:
-- | autocapitalize -- will need a new type
type PaperInputBehavior r = IronA11yKeysBehavior
  ( IronControlState
    ( allowedPattern :: String
    , alwaysFloatLabel :: Boolean
    , autocomplete :: OnOff
    , autocorrect :: OnOff
    , autofocus :: Boolean
    , autosave :: String
    , autoValidate :: Boolean
    , charCounter :: Boolean
    , errorMessage :: String
    , invalid :: Boolean
    , label :: String
    , max :: Number
    , maxlength :: Int
    , min :: Number
    , minlength :: Int
    , multiple :: Boolean
    , name :: String
    , noLabelFloat :: Boolean
    , pattern :: String
    , placeholder :: String
    , readonly :: Boolean
    , required :: Boolean
    , results :: Int
    , size :: Int
    , step :: StepValue 
    , "type" ∷ InputType
    , validator :: String
    , value :: String
    )
  )

type PaperInkyFocusBehavior r = IronControlState
  ( IronButtonState
    ( PaperRippleBehavior
      (| r)
    )
  )

type PaperRippleBehavior r =
  ( noink :: Boolean
  | r
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

type HTMLpaperCard = Interactive
  ( alt :: String
  , animated :: Boolean
  , animatedShadow :: Boolean
  , elevation :: Int
  , fadeImage :: Boolean
  , heading :: String
  , image :: String
  , placeholderImage :: String
  , preloadImage :: Boolean
  )

type HTMLpaperCheckbox = Interactive 
  ( PaperCheckedElementBehavior
    ( ariaActiveAttribute :: String
    | r
    )
  )

type HTMLpaperButton = Interactive
  ( PaperButtonBehavior
    ( raised :: Boolean
    | r
    )
  )

type HTMLpaperRadioButton = Interactive
  ( PaperCheckedElementBehavior
    ( ariaActiveAttribute :: String
    | r
    )
  )