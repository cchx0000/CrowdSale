pragma solidity ^0.4.19;

import '../node_modules/zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';

contract HeyChain is MintableToken {
  string public name = "Hey Chain";
  string public symbol = "HEY";
  uint256 public decimals = 18;
}