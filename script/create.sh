#!/bin/sh

# cleos_test='cleos -u https://jungle2.cryptolions.io:443 --wallet-url http://127.0.0.1:8888'
cleos_test='cleos -u http://jungle2.cryptolions.io'
echo $cleos_test

# $cleos_test wallet unlock --password PW5K7nxsfG6DGUN3FrkqYMiJhtuus26T4QQisc5wg3torGassT4tf
$cleos_test wallet unlock --password PW5J8F8pQsuwXQ5itipWorwCa27pEoWMi6Rij9fqoweBLwCQAmNSn

# Tic Tac Toe 創建遊戲
$cleos_test push action jimmy2tictac create '{"challenger": "challenge111", "host": "host11111111"}' -p host11111111@active

