function __starting_update_msg() {
  # $1: the target name
  echo ">>> updating ${1}...";
}

function __update_info_msg() {
  # $1: anything
  echo -e "\n${1}...";
}

function __update_done_msg() {
  echo -e "\ndone";
}