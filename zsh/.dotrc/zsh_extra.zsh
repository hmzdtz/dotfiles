#!/bin/zsh

# Some low-priority but equally important stuff
# - xh
# - zenv
# - github-cli
# - glow
# - gitui
# - duf
# - stylua
# - terraform-ls
# - git-extras

zinit wait'1' lucid light-mode from'gh-r' as'command' bpick'*linux*.tar.gz' for \
    atload'alias h=xh' mv'xh* -> xh' pick'xh/xh' @ducaale/xh \
    mv'zenv* -> zenv' pick'zenv/zenv' numToStr/zenv \
    mv'gh* -> gh' pick'gh/bin/gh' cli/cli \
    charmbracelet/glow \
    extrawurst/gitui \
    muesli/duf \
    bpick'*linux.zip' JohnnyMorganz/StyLua \
    bpick'*linux*.zip' @hashicorp/terraform-ls \

zinit wait'2' lucid light-mode for \
    as"program" pick"$ZPFX/bin/git-*" src"etc/git-extras-completion.zsh" make"PREFIX=$ZPFX" tj/git-extras