#!/bin/sh

# cleos_test='cleos -u https://jungle2.cryptolions.io:443 --wallet-url http://127.0.0.1:8888'
cleos_test='cleos -u https://jungle2.cryptolions.io:443'
echo $cleos_test

# $cleos_test wallet create --to-console >> wallet.key

$cleos_test wallet unlock --password PW5K7nxsfG6DGUN3FrkqYMiJhtuus26T4QQisc5wg3torGassT4tf
# $cleos_test wallet unlock --password PW5J8F8pQsuwXQ5itipWorwCa27pEoWMi6Rij9fqoweBLwCQAmNSn

# $cleos_test wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
# $cleos_test wallet import --private-key 5KKveKAfZvPvWu9xtcR1yEaTY7LoumXzKgWBVNaY1jFNhbiwX4M
# $cleos_test wallet import --private-key 5K4NiFjjhMYjCEpRnbEzAoMFiNysFzzESFvvmoTgQQGF56gxDDF
$cleos_test set contract jimmy2tictac /Users/Jimmy/Dropbox/awesome/EOS/eos-tic-tac-toe-example/tic_tac_toe -p jimmy2tictac@active


