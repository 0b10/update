LDIR=$(dirname ${0})
source "${LDIR}/lib/broot.zsh";
[[ $? -ne 0 ]] && return 1; # run after each source

function update() {
  __update_broot
}

alias u="update";