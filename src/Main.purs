module Main where

import App as App
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)
import Prelude

type Effects = (console ∷ CONSOLE)

main :: Eff (HA.HalogenEffects Effects) Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  runUI App.component unit body