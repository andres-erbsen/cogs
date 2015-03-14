import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus

main = xmonad defaultConfig {
    startupHook = setWMName "LG3D"
  , logHook = takeTopFocus
  , borderWidth = 0
  , terminal = "st -e tmux"
}
