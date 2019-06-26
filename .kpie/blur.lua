--
-- Dump all current windows, along with their sizes and positions.
--
--
--
-- Usage:
--
--    kpie [--single] ./samples.dump.lua
--


--
-- Get the title, class, and application of each window.
--
class = window_class()
xid  = window_xid()

--
-- Write out the config in a way that can be manipulated.
--

--if ( class == "kitty" ) then
--   print( "Bluring kitty" );
--   os.execute("xprop -id " .. xid .. " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xcfffffff");
--   os.execute("xprop -id " .. xid .. " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0");
--end

if ( class == "code-oss" or 
     class == "Spotify"  or
     class == "kitty"
     ) then
   print( "Bluring " .. class );
   os.execute("xprop -id " .. xid .. " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xcfffffff");
   os.execute("xprop -id " .. xid .. " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0");
end

--if ( class == "Spotify" ) then
--   print( "Bluring code" );
--   os.execute("xprop -id " .. xid .. " -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xcfffffff");
--   os.execute("xprop -id " .. xid .. " -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0");
--end

