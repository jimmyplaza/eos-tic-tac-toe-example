#!/bin/sh

# cleos_test='cleos -u https://jungle2.cryptolions.io:443 --wallet-url http://127.0.0.1:8888'
# cleos_test='cleos -u http://jungle2.cryptolions.io --wallet-url http://127.0.0.1:8888'
cleos_test='cleos -u http://jungle2.cryptolions.io'
echo $cleos_test

# $cleos_test wallet unlock --password PW5K7nxsfG6DGUN3FrkqYMiJhtuus26T4QQisc5wg3torGassT4tf
$cleos_test wallet unlock --password PW5K7nxsfG6DGUN3FrkqYMiJhtuus26T4QQisc5wg3torGassT4tf

# Game table
# $cleos_test get table jimmy2tictac jimmy2tictac games

#@parma1: contract user
#@param2: table scope
$cleos_test get table jimmy2tictac host11111111 games

