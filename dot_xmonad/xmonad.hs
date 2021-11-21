import XMonad

-- Actions
import XMonad.Actions.CopyWindow (kill1)

-- Utilities
import XMonad.Util.EZConfig (additionalKeysP)

myTerminal = "kitty"

main = xmonad $ defaultConfig
        { modMask = mod4Mask -- Use Super instead of Alt
        , terminal = myTerminal
        -- more changes
        } `additionalKeysP`
	[ ("M-S-<Return>", spawn "rofi -show run")
	, ("M-<Return>", spawn myTerminal)
        , ("M-q", kill1)
	]
