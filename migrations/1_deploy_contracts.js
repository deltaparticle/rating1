// migrations/1_deploy_contracts.js
const RatingSystem = artifacts.require("RatingSystem");

module.exports = function (deployer) {
  deployer.deploy(RatingSystem);
};
