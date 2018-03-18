module App 
  ( Query(..)
  , component
  ) where

import Prelude

import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Console (CONSOLE, logShow, log)
import DOM.Event.Types (MouseEvent)
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Core (ElemName(..), AttrName(..))
import Halogen.HTML.Events (onValueChange)
import Halogen.HTML.Events as HE
import Halogen.HTML.Properties as HP
import Paper.Elements as PE
import Paper.Properties as PP

type State = {}

data Query a
  = HandleClick a
  | HandleInput String a
  | HandleButtonClick MouseEvent a

type Input = Unit

type Message = Void

type Effects eff = 
  ( console ∷ CONSOLE
  | eff
  )

component ∷ ∀ eff. H.Component HH.HTML Query Input Message (Aff (Effects eff))
component =
  H.component
    { initialState: const initialState
    , receiver: const Nothing
    , eval
    , render
    }
  where

  initialState ∷ State
  initialState = {}

  eval ∷ Query ~> H.ComponentDSL State Query Message (Aff (Effects eff))
  eval (HandleClick a) = do
    pure a
  
  eval (HandleInput x a) = do
    H.liftEff (log x)
    pure a

  eval (HandleButtonClick _ a) = do
    H.liftEff (log "button clicked")
    pure a

  render ∷ State → H.ComponentHTML Query
  render state =
    HH.div_ 
      [ HH.element (ElemName "app-header")
        [ HP.attr (AttrName "reveals") "true" ]
        [ HH.element (ElemName "app-toolbar")
          []
          [ HH.div
            [ HP.attr (AttrName "main-title") "true" ]
            [ HH.text "Polymer + Halogen" ]
          ]
        ]
      , PE.card
        [ PP.animated true 
        , PP.heading "C3P0"
        , PP.image "./C3PO.jpg"
        , PP.elevation 4
        ]
        [ HH.div
          [ HP.class_ (HH.ClassName "card-content") ]
          [ HH.text "Emmentaler or Emmental is a yellow"]
        ]
      , PE.button 
        [ PP.raised true
        , PP.noink true
        , HE.onClick (HE.input HandleButtonClick)
        ]
        [ HH.text "Create" ]
      , PE.fab
        [ PP.noink true 
        , PP.label "😻"
        ]
      , PE.fab
        [ PP.mini true
        , PP.label "+"
        ]
      , PE.checkbox
        [ HP.checked true ]
        []
      , HH.div_
        [ PE.input 
          [ PP.label "Some random label"
          , PP.alwaysFloatLabel true
          , HE.onValueInput (HE.input HandleInput)
          ] 
          []
        ]
      ] 