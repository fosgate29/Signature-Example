var Pizza = artifacts.require('./Pizza.sol');

module.exports = function (deployer) {
  deployer.deploy(Pizza)
}
