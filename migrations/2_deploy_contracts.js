const nftGenerator = artifacts.require("nftGenerator");



module.exports = async function(deployer, network, accounts) {


  //Deploy nftGenerator

  await deployer.deploy(nftGenerator)
  const nftGen = await nftGenerator.deployed()


};