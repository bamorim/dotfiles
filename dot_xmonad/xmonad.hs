import qualified Codec.Binary.UTF8.String as UTF8
import qualified DBus as D
import qualified DBus.Client as D
import Data.Monoid
import XMonad
import XMonad.Actions.CopyWindow (kill1)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops -- for some fullscreen events, also for xcomposite in obs.
import XMonad.Hooks.ManageDocks
  ( ToggleStruts (..),
    avoidStruts,
    docks,
    manageDocks,
  )
import XMonad.Hooks.ManageHelpers (doFullFloat, isFullscreen)
import XMonad.Layout.Grid
import XMonad.Layout.NoBorders (noBorders)
import XMonad.Layout.Renamed
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import qualified XMonad.StackSet as W
import XMonad.Util.EZConfig (additionalKeysP)

myTerminal :: String
myTerminal = "kitty --single-instance"

myBorderWidth :: Dimension
myBorderWidth = 2 -- Sets border width for windows

myNormColor :: String
myNormColor = "#282c34" -- Border color of normal windows

myFocusColor :: String
myFocusColor = "#46d9ff" -- Border color of focused windows

-- Layouts
myLayoutHook = avoidStruts $ tall ||| grid ||| full
  where
    evenSpaced i = spacingRaw True (Border i i i i) True (Border i i i i) True

    full = renamed [Replace "full"] $ noBorders Full

    tall = renamed [Replace "tall"] $ evenSpaced 4 $ Tall 1 (1 / 100) (1 / 2)

    grid = renamed [Replace "grid"] $ evenSpaced 4 Grid

-- TODO: Include default keybindings here to make it explicit
myKeys :: [(String, X ())]
myKeys =
  -- Start Programs
  [ ("M-<Return>", spawn "rofi -show drun"),
    ("M-M1-<Return>", spawn "ulauncher-toggle"),
    ("M-M1-t", spawn myTerminal),
    -- Window management
    ("M-S-m", windows W.swapMaster),
    ("M-q", kill1)
  ]

myManageHook :: XMonad.Query (Data.Monoid.Endo WindowSet)
myManageHook =
  composeAll
    [ className =? "zoom" --> doFloat,
      className =? "ulauncher" --> doFloat,
      (className =? "firefox" <&&> resource =? "Dialog") --> doFloat, -- Float Firefox Dialog
      isFullscreen --> doFullFloat
    ]

-- Polybar integration
-- Override the PP values as you would otherwise, adding colors etc depending
-- on  the statusbar used
myLogHook :: D.Client -> PP
myLogHook dbus = def {ppOutput = dbusOutput dbus}

-- Emit a DBus signal on log updates
dbusOutput :: D.Client -> String -> IO ()
dbusOutput dbus str = do
  let signal =
        ( D.signal
            objectPath
            interfaceName
            memberName
        )
          { D.signalBody = [D.toVariant $ UTF8.decodeString str]
          }
  D.emit dbus signal
  where
    objectPath = D.objectPath_ "/org/xmonad/Log"

    interfaceName = D.interfaceName_ "org.xmonad.Log"

    memberName = D.memberName_ "Update"

myStartupHook :: X ()
myStartupHook = do
  spawn "polybar default"

main = do
  dbus <- D.connectSession
  -- Request access to the DBus name
  D.requestName
    dbus
    (D.busName_ "org.xmonad.Log")
    [D.nameAllowReplacement, D.nameReplaceExisting, D.nameDoNotQueue]
  xmonad $
    docks $
      ewmh
        defaultConfig
          { modMask = mod4Mask, -- Use Super instead of Alt
            manageHook = myManageHook <+> manageDocks,
            terminal = myTerminal,
            layoutHook = myLayoutHook,
            handleEventHook = fullscreenEventHook,
            borderWidth = myBorderWidth,
            normalBorderColor = myNormColor,
            focusedBorderColor = myFocusColor,
            startupHook = myStartupHook,
            logHook = dynamicLogWithPP (myLogHook dbus)
          }
        `additionalKeysP` myKeys