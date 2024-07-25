// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Constants {
    // coding convention to uppercase constant variables
    // constant 表示不可修改这样存储可以减少很多GAS消耗
    address public constant MY_ADDRESS =
        0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;
    address public  TestAddress;

    function mod() public {
        TestAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
}
