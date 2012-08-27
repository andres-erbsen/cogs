import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.EwmhDesktops

altMask = mod1Mask

main = do
  xmonad $ defaultConfig
    { terminal    = "urxvt"
    , borderWidth = 0
    , handleEventHook = fullscreenEventHook
    } `additionalKeysP`
    [ ("M-C-l",  spawn "~/cogs/turtlemode") -- Lock screen
    , ("<XF86AudioMute>", spawn "amixer -q set Master toggle")-- Mute
    , ("<XF86AudioLowerVolume>", spawn "amixer -q set Master 8%-") -- Decrease volume.
    , ("<XF86AudioRaiseVolume>", spawn "amixer -q set Master 4%+") -- Increase volume.
    , ("<XF86AudioPrev>", spawn "mpc -q prev")
    , ("<XF86AudioPlay>", spawn "mpc --format '' | grep playing && mpc pause || mpc play")
    , ("<XF86AudioStop>", spawn "mpc -q stop")
    , ("<XF86AudioNext>", spawn "mpc -q next")
    , ("<Print>",   spawn "cd Dropbox/t/andres/vt/ && scrot")
    ]
