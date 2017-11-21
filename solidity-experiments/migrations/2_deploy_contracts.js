var proof_of_existence = artifacts.require("./proof_of_existence.sol");

module.exports = function(deployer) {
  deployer.deploy(proof_of_existence);
};
