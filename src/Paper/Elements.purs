module Paper.Elements
  ( button, button_
  , card, card_ 
  , checkbox, checkbox_
  , fab
  , input, input_
  , radioButton, radioButton_
  )
  where

import Halogen.HTML.Core (ElemName(..), HTML)
import Halogen.HTML.Elements (Leaf, Node, element)
import Paper.Indexed (HTMLpaperButton, HTMLpaperCard, HTMLpaperCheckbox, HTMLpaperFab, HTMLpaperInput, HTMLpaperRadioButton)

button ∷ ∀ p i. Node HTMLpaperButton p i
button = element (ElemName "paper-button")

button_ ∷ ∀ p i. Array (HTML p i) → HTML p i
button_ = button []

card ∷ ∀ p i. Node HTMLpaperCard p i
card = element (ElemName "paper-card")

card_ ∷ ∀ p i. Array (HTML p i) → HTML p i
card_ = card []

checkbox ∷ ∀ p i. Node HTMLpaperCheckbox p i
checkbox = element (ElemName "paper-checkbox") 

checkbox_ ∷ ∀ p i. Array (HTML p i) → HTML p i
checkbox_ = checkbox []

fab ∷ ∀ p i. Leaf HTMLpaperFab p i
fab props = element (ElemName "paper-fab") props []

input ∷ ∀ p i. Node HTMLpaperInput p i
input = element (ElemName "paper-input") 

input_ ∷ ∀ p i. Array (HTML p i) → HTML p i
input_ = input []

radioButton :: ∀ p i. Node HTMLpaperRadioButton p i
radioButton = element (ElemName "paper-radio-button") 

radioButton_ :: ∀ p i. Array (HTML p i) -> HTML p i
radioButton_ = radioButton []
