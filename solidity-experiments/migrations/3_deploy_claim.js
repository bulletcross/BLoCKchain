var claim = artifacts.require("./owner_claim.sol");

module.exports = function(deployer) {
  deployer.deploy(claim);
};
