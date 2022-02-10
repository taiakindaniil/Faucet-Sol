# Faucet-Sol
Faucet Sol is a simple Solidity project for the Ethereum blockchain ⛓

## Compile & deploy
If you want to deploy contracts on the Ropsten network, you need to enter your **Infura Project ID** in **truffle-config.js** file. Then enter these commands:

```
$ truffle console --network ropsten
truffle(ropsten)> compile
truffle(ropsten)> migrate
```
## Useful commands with truffle console
There are a few examples how to interact with the contract.

### Send transaction to the Faucet contract
```
truffle(ropsten)> web3.eth.sendTransaction({from: accounts[0], to: Faucet.address, value: web3.utils.toWei('0.7', 'ether')});
```
### Get balance of the Faucet contract
```
truffle(ropsten)> web3.eth.getBalance(Faucet.address)
```
### Call the withdraw function
```
truffle(ropsten)> Faucet.deployed().then(instance => {instance.withdraw(web3.utils.toWei('0.1', 'ether'))}).then(console.log)
```
