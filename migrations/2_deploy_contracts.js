const Faucet = artifacts.require("Faucet");
const Owned = artifacts.require("Owned");
const Mortal = artifacts.require("Mortal");

module.exports = function (deployer) {
  deployer.deploy(Faucet);
  deployer.deploy(Owned);
  deployer.deploy(Mortal);
};
