# Faucet-Sol
Faucet Sol is a simple Solidity project for the Ethereum blockchain.

## Compile & deploy
```
$ truffle console --network ropsten
truffle(ropsen)> compile
truffle(ropsen)> migrate
```
## Useful commands with truffle console

### Send transaction to Faucet contract
```
truffle(ropsen)> web3.eth.sendTransaction({from: accounts[0], to: Faucet.address, value: web3.utils.toWei('0.7', 'ether')});
```
### Get balance of Faucet contract
```
truffle(ropsen)> web3.eth.getBalance(Faucet.address)
```
### Call withdraw function
```
truffle(ropsen)> Faucet.deployed().then(instance => {instance.withdraw(web3.utils.toWei('0.1', 'ether'))}).then(console.log)
```
