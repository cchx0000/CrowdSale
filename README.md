# CrowdSale
Building a crowdsale smartcontract on ethereum using Truffle &amp; OpenZepplin

Run npm install


Testing Steps
=============
truffle compile
open another tab and run testrpc -u 0
truffle migrate
Once successfully done, run 'truffle console' and execute following commands to check the contract


```
account1 = web3.eth.accounts[1]
HeyChainCrowdsale.deployed().then(inst => { crowdsale = inst })
crowdsale.token().then(addr => { tokenAddress = addr } )
tokenAddress
HeyChainInstance 
HeyChain.at(tokenAddress
HeyChainInstance.balanceOf(account1).then(balance => balance.toString(10))
HeyChainCrowdsale.deployed().then(inst => inst.sendTransaction({ from: account1, value: web3.toWei(5, "ether")}))
HeyChainInstance.balanceOf(account1).then(balance => account1GusTokenBalance = balance.toString(10))
web3.fromWei(account1GusTokenBalance, "ether")
```
Get Ether for Ropsten Network 
==============================
faucet.ropsten.be:3001 - go to this, enter your address of ropsten account and get 3 ETH.

Deploying a truffle contract to ropsten
=======================================
https://medium.com/@guccimanepunk/how-to-deploy-a-truffle-contract-to-ropsten-e2fb817870c1

--Syncing Ropsten Network 
https://ethereum.stackexchange.com/a/19366/17168

--More about testnets
https://karl.tech/intro-guide-to-ethereum-testnets/
--Installing geth
http://www.ziggify.com/blog/blockchain-stack-1-installing-ethereum-geth-smart-contract/

--Auditing Contract
“The ultimate guide to audit a Smart Contract + Most dangerous attacks in Solidity” @Merunas2 https://medium.com/@merunasgrincalaitis/how-to-audit-a-smart-contract-most-dangerous-attacks-in-solidity-ae402a7e7868

--ICO Checklist
https://medium.com/@merunasgrincalaitis/what-it-takes-to-create-a-successful-ico-how-expensive-it-is-your-complete-guide-35912722351e

--Attacks on Ethereum Smart Contracts
https://www.cryptologie.net/article/423/attacks-on-ethereum-smart-contracts/
