# cargo home must be set because it is directly referenced
[[ -e $CARGO_HOME ]] || (echo "CARGO_HOME env var must be set" && return 1);