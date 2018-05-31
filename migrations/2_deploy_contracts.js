var HeyChainCrowdsale = artifacts.require("./HeyChainCrowdsale.sol")
var HeyChain = artifacts.require("./HeyChain.sol")

module.exports = function(deployer, network, accounts) {
  const openingTime = web3.eth.getBlock('latest').timestamp + 2; // two secs in the future
  const closingTime = openingTime + 86400 * 20; // 20 days
  const rate = new web3.BigNumber(1000) // rate of ether to Vamshi Coin in wei
  const wallet = web3.eth.accounts[0] // the address that will hold the fund. Recommended to use a multisig one for security.

  return deployer
      .then(()=>{
        return deployer.deploy(HeyChain)
      })
      .then(()=>{
        return deployer.deploy(
          
          HeyChainCrowdsale,
          openingTime,
          closingTime,
          rate,
          wallet,
          HeyChain.address
        )
      })
}