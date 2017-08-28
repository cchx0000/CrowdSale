pragma solidity ^0.4.11;

import './VamshiCoin.sol';
import '../node_modules/zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';


contract VamshiCoinCrowdsale is Crowdsale {

  function VamshiCoinCrowdsale(uint256 _startBlock, uint256 _endBlock, uint256 _rate, address _wallet) Crowdsale(_startBlock, _endBlock, _rate, _wallet) {
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific MintableToken token.
  function createTokenContract() internal returns (MintableToken) {
    return new VamshiCoin();
  }

}