# alias weather='curl wttr.in/'
function weather () {
  curl "http://wttr.in/$1"
}

mkfile() { mkdir -p -- "$1" && touch -- "$1"/"$2" }
mkcd() { mkdir "$1" && cd "$1"}

alias vi='nvim'
alias vim='nvim'
alias railsc='bundle exec rails c'
alias testu="TZ='/usr/share/zoneinfo/UTC' bundle exec rspec"
alias testi="echo 'n' | TZ='/usr/share/zoneinfo/UTC' RACK_ENV=development RAILS_ENV=development bundle exec rspec -O .rspec_integration"
