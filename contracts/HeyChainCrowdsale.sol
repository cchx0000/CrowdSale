pragma solidity ^0.4.11;

import './HeyChain.sol';
import '../node_modules/zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';


contract HeyChainCrowdsale is Crowdsale {

  function HeyChainCrowdsale(uint256 _rate, address _wallet, ERC20 _token) Crowdsale(_rate, _wallet, _token) {
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific MintableToken token.
  function createTokenContract() internal returns (MintableToken) {
    return new HeyChain();
  }

}