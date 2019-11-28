# keep reference to name of current script to ignore it.
this=$(basename $BASH_SOURCE)

# functions -------------------------------------------------------------------
find_dotfiles() {
  find . -type f -not -path "./.git/*" -not -name $this
}

make_symlink() {
  relative_source_dir=$(dirname $1)
  target_dir=~/$relative_source_dir
  source=$(pwd)/$1
  if [[ ! -e $target_dir ]]; then
    mkdir -p $target_dir
  fi
  ln -sf $source $target_dir
}

# main ------------------------------------------------------------------------
for file in $(find_dotfiles); do
  make_symlink $file
done
