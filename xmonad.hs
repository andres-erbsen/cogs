import XMonad
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus

main = xmonad defaultConfig {
    startupHook = setWMName "LG3D"
  , logHook = takeTopFocus
  , terminal = "st -e tmux"
}
