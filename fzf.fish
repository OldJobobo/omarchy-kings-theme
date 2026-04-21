set -l color00 '#261e12'
set -l color01 '#a33d4e'
set -l color02 '#2f7f88'
set -l color03 '#c8a03c'
set -l color04 '#7550a3'
set -l color05 '#2e6fb8'
set -l color06 '#5d7d3a'
set -l color07 '#d9c27a'
set -l color08 '#564a38'
set -l color09 '#cf6f7e'
set -l color0A '#56b8a6'
set -l color0B '#efcf72'
set -l color0C '#a37dcb'
set -l color0D '#79abd6'
set -l color0E '#8eb866'
set -l color0F '#f3e6bf'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
