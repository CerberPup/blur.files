--
-- Blurs all windows with matching name
--
--
--
-- Usage:
--
--    kpie [--single] ./blur.lua
--

class = window_class()
xid  = window_xid()

if ( class == "code-oss" or 
     class == "Spotify"  or
     class == "kitty"
     ) then
   print( "Bluring " .. class );
   os.execute("xprop -id " .. xid .. " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xcfffffff");
   os.execute("xprop -id " .. xid .. " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0");
end
