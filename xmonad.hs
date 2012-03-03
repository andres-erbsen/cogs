import XMonad
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.Grid
import XMonad.Layout.IM

main = do
  xmonad $ defaultConfig
    { terminal    = "gnome-terminal"
    , layoutHook = Full ||| Tall 1 0.03 0.5 ||| Grid ||| withIM (0.20) (Role "contact_list")  Grid 
    , focusFollowsMouse = False
    , borderWidth = 0
    } `additionalKeys`
    [ ((mod1Mask .|. controlMask, xK_l), spawn "gnome-screensaver-command -lock")
    , ((controlMask, xK_Print), spawn "sleep 0.2; #screenshot window")
    , ((0, xK_Print), spawn "#screenshot")
    -- these do not work atm
    , ((0, 0x1008FF12), spawn "amixer -q set Master toggle")-- Mute
    , ((0, 0x1008FF11), spawn "amixer -q set Master 10%-")  -- Decrease volume.
    , ((0, 0x1008FF13), spawn "amixer -q set Master 10%+")  -- Increase volume.
    , ((0, 0x1008FF16), spawn "")                           -- Audio previous.
    , ((0, 0x1008FF14), spawn "")                           -- Play/pause
    , ((0, 0x1008FF17), spawn "")                           -- Audio next
     ]  
