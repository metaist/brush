source brush

main() {
  local COLORS=(
    'redBright' 'yellowBright' 'greenBright' 'blueBright'
    'cyanBright' 'magentaBright'
  )
  local NUM_COLORS=${#COLORS[@]}
  local msg='Double rainbow!'
  local idx

  brush auto  # in case we're piped
  for (( idx = 0; idx < ${#msg}; idx++ )); do
    echo -ne "$(brush ${COLORS[(( idx % NUM_COLORS ))]})${msg:$idx:1}$(brush)"
  done
  echo
}

main $@
