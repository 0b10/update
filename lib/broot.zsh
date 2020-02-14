LDIR=$(dirname ${0})

# check $CARGO_HOME is set
source "${LDIR}/cargo.zsh";
[[ $? -ne 0 ]] && return 1;

# check git local repos directory exists
source "${LDIR}/git.zsh";
[[ $? -ne 0 ]] && return 1;

source "${LDIR}/common.zsh";

BROOT_LREPO="${GIT_LREPOS}/broot";

function __update_broot() {
  [[ -e $BROOT_LREPO ]] || (echo "the broot repo doesn't exist under ${GIT_LREPOS}" && return 1);

  __starting_update_msg "broot";
  (
    cd $BROOT_LREPO && \
    __update_info_msg "git pull" &&\
    git pull && \
    __update_info_msg "cargo update"
    cargo update &&\
    __update_done_msg
  )
}