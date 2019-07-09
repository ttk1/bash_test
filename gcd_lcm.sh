# https://github.com/ttk1/bash-coder/blob/master/cut_and_dried/gcd_lcm.sh

function GCD() {
  local -r r='n?tmp=n,n=m%n,m=tmp,r:m'
  echo $((m=$1>$2?$1:$2,n=$1^$2^m,r))
}

function LCM() {
  echo $((($1*$2)/$(GCD $1 $2)))
}