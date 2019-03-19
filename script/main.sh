#!/bin/sh

# cleos_test='cleos -u https://jungle2.cryptolions.io:443 --wallet-url http://127.0.0.1:8888'
cleos_test='cleos -u http://jungle2.cryptolions.io'
echo $cleos_test

$cleos_test wallet create --to-console >> wallet.key

# $cleos_test wallet unlock --password PW5K7nxsfG6DGUN3FrkqYMiJhtuus26T4QQisc5wg3torGassT4tf
$cleos_test wallet unlock --password PW5J8F8pQsuwXQ5itipWorwCa27pEoWMi6Rij9fqoweBLwCQAmNSn

# $cleos_test wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
# $cleos_test wallet import --private-key 5KKveKAfZvPvWu9xtcR1yEaTY7LoumXzKgWBVNaY1jFNhbiwX4M
# $cleos_test wallet import --private-key 5K4NiFjjhMYjCEpRnbEzAoMFiNysFzzESFvvmoTgQQGF56gxDDF
# $cleos_test wallet import --private-key 5K8JXQB3xAPsK84MwG4G1H3eRDbCaadsxWWUa9ZpQKodnoVpqJT # jimmylottery

# 抵押 CPU
# $cleos_test system delegatebw jimmy2tictac jimmy2tictac '20 EOS' '20 EOS'

# 買RAM
$cleos_test system buyram jimmy2tictac jimmy2tictac "20.00 EOS"


#允許code權限：
# $cleos_test set account permission jimmy2tictac active --add-code

# EOS LOTTERY CONTRACT: jimmy2tictac
# $cleos_test push action jimmy2tictac openlottery '{"number":"22222", "servertime": "1550221112966", "blocktime":"2019-02-20T08:12:00.000", "blocknum": 23456 }' -p jimmy2tictac@active

