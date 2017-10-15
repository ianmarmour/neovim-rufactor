if exists('g:rufactor_autoloaded') || &cp
  finish
endif
let g:rufactor_autoload = 1

function! rufactor#Test() abort
  if has('ruby')
    ruby $rufactor.show_test
  else
  endif
endfunction

ruby << EOF
  # Require ruby files

  require 'rufactor'
  $rufactor = Rufactor.new
EOF
