conky.config = {
    -- Run settings
    -- Forked to background
    background = true,
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 50,
    gap_y = 85,
    minimum_width = 1200,
    maximum_width = 1200,
    minimum_height = 200,
    xinerama_head = 1,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'dock',

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true,

    --Textual
    format_human_readable = true,           -- KiB, MiB rather then number of bytes
    font  = 'JetBrains Mono:bold:size=10',  -- the default font used
    font2 = 'Raleway:bold:size=24',         -- font for the time
    font3 = 'Ubuntu:size=12',               -- font for the date
    font4 = 'Raleway:bold:size=8',          -- font for the keybindings heading
    max_text_width = 0,			    -- 0 will make sure line does not get broken if width too smal
    max_user_text = 16384,		    -- max text in conky default 16384
    short_units = false,		    -- shorten units from KiB to k
    top_name_width = 21,		    -- width for $top name value default 15
    top_name_verbose = false,		    -- If true, top name shows the full command line of  each  process - Default value is false.
    use_spacer = 'none',		    -- adds spaces around certain objects to align - default none
    xftalpha = 1,			    -- alpha of the xft font - between 0-1

    --catppuccin
    color0 = '#C9CBFF',
    color1 = '#D9E0EE',
    color2 = '#89DCEB',
    color3 = '#F2CDCD',
    color4 = '#C3BAC6',
    color5 = '#ABE9B3',
    color6 = '#FAE3B0',
};

conky.text = [[
${if_running spotify}${color0}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color0}${font Gotham Book:pixelsize=15}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p spotify metadata artist}${font Gotham:style=bold:pixelsize=10}
${color0}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p spotify metadata title}

${else}${if_match "" != "${exec playerctl -p spotifyd status}"}${color0}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color0}${font Gotham Book:pixelsize=15}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p spotifyd metadata artist}${font Gotham:style=bold:pixelsize=10}
${color0}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p spotifyd metadata title}

${else}${if_match "" != "${exec playerctl -p vlc status}"}${color0}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color0}${font Gotham Book:pixelsize=15}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p vlc metadata artist}${font Gotham:style=bold:pixelsize=10}
${color0}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p vlc metadata title}

${else}${if_match "" != "${exec playerctl -p Lollypop status}"}${color0}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color0}${font Gotham Book:pixelsize=15}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec playerctl -p Lollypop metadata artist}${font Gotham:style=bold:pixelsize=10}
${color0}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec playerctl -p Lollypop metadata title}

${else}${if_running cmus}${color0}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color0}${font Gotham Book:pixelsize=15}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec cmus-remote -Q 2>/dev/null | grep 'tag artist' | cut -d " " -f 3-}${font Gotham:style=bold:pixelsize=10}
${color0}${font Gotham:style=bold:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec cmus-remote -Q 2>/dev/null | grep title | cut -d " " -f 3- }

${else}${color0}${font Gotham Book:pixelsize=80}${time %H:%M:%S}${font Gotham Book:pixelsize=65}
${color0}${font Montserrat Light:pixelsize=35}${time %B} ${time %d}${if_match ${time %d}==1}st${else}${if_match ${time %d}==2}nd${else}${if_match ${time %d}==3}rd${else}${if_match ${time %d}==4}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==7}th${else}${if_match ${time %d}==8}th${else}${if_match ${time %d}==9}th${else}${if_match ${time %d}==10}th${else}${if_match ${time %d}==11}th${else}${if_match ${time %d}==12}th${else}${if_match ${time %d}==13}th${else}${if_match ${time %d}==14}th${else}${if_match ${time %d}==15}th${else}${if_match ${time %d}==16}th${else}${if_match ${time %d}==17}th${else}${if_match ${time %d}==18}th${else}${if_match ${time %d}==19}th${else}${if_match ${time %d}==20}th${else}${if_match ${time %d}==21}st${else}${if_match ${time %d}==22}nd${else}${if_match ${time %d}==23}rd${else}${if_match ${time %d}==24}th${else}${if_match ${time %d}==25}th${else}${if_match ${time %d}==26}th${else}${if_match ${time %d}==27}th${else}${if_match ${time %d}==28}th${else}${if_match ${time %d}==29}th${else}${if_match ${time %d}==30}th${else}${if_match ${time %d}==31}st${else}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif} ${time %Y}${endif}${endif}${endif}${endif}${endif}
]];
