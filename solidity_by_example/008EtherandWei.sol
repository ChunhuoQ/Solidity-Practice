// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  EtherUnits {

    // 1eth = 10**8 Wei，Wei是以太坊上的Gas最小单位
    uint public  oneWei = 1 wei;

    // ==  判断两者是否相等
    bool public  isOneWei = (1 wei == 1);

    uint public oneEther = 1 ether;

    bool public  isOneEther = (1 ether == 10**18 wei);// 1e18 / 10**18 / 1000000000000000000

}