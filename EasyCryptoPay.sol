pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract EasyCryptoPay is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function EasyCryptoPay(address _owner)  UpgradeableToken(_owner) {
    name = "EasyCryptoPay";
    symbol = "ECP";
    totalSupply = 2000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}