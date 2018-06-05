# mainnet
```
# bitcoin
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@blocknets.example.com:8332 -i
# litecoin
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@blocknets.example.com:9332 -i
# ethereum
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":42}' -H "Content-Type: userlication/json" http://blocknets.example.com:8545 -i
# ethereum classic
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":42}' -H "Content-Type: userlication/json" http://blocknets.example.com:9545 -i
# zcash
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@blocknets.example.com:8232 -i
```

# testnet
```
# bitcoin testnet
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@testblocknets.example.com:18332 -i
# litecoin testnet
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@testblocknets.example.com:19332 -i
# ethereum kovan
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":42}' -H "Content-Type: userlication/json" http://testblocknets.example.com:18545 -i
# ethereum classic morden testnet
curl -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":42}' -H "Content-Type: userlication/json" http://testblocknets.example.com:19545 -i
# zcash testnet
curl -X POST --data '{"method":"getblockchaininfo"}' http://user:pass@testblocknets.example.com:18232 -i
```

# faucets
```
# bitcoin testnet
* https://testnet.manu.backend.hamburg/faucet
* https://www.chain.so/address/BTCTEST/{address}

# litecoin testnet
* http://testnet.litecointools.com/
* https://www.chain.so/address/LTCTEST/{address}

# ethereum
* https://gitter.im/kovan-testnet/faucet
* https://kovan.etherscan.io/address/{address}

# classic testnet
* http://testnet.epool.io/#

# zcash testnet
* https://faucet.testnet.z.cash/
* https://explorer.testnet.z.cash/blocks
```

# testnet ui wallets 
```
BTC, LTC - https://test.bitgo.com/wallet
ETH (Kovan) - https://www.myetherwallet.com/
```

# gen basic auth
```
docker run --rm -ti xmartlabs/htpasswd user pass
```

# Transactions testnet

### bitcoin
```
sudo docker exec -u bitcoin {container_id} bitcoin-cli -testnet [cmd]
```
* importprivkey {privKey} "user"
* getbalance
* getaccountaddress "user"
* listaccounts
* sendfrom "user" "{address}" 0.1
* sendtoaddress "{address}" 1.0

### litecoin
```
sudo docker exec --user litecoin {container_id} litecoin-cli -testnet -rpcuser=user -rpcpassword=pass [cmd]
```
* importprivkey {privKey} "user"
* getbalance
* getaccountaddress "user"
* listaccounts
* sendfrom "user" "{address}" 0.1

### ethereum
```
ssh -N -L 18545:127.0.0.1:18545 user@{server_ip}
open https://www.myetherwallet.com/
```

### classic
```
ssh -N -L 19545:127.0.0.1:19545 user@{server_ip}
open https://www.myetherwallet.com/
```
