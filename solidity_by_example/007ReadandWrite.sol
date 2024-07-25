// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  SimpleStorage {

    uint public numa; //在区块链创建一个nama变量 占用一个位置

    function set(uint _numa) public {
        numa = _numa;
    }

    //修改
    function get() public view  returns (uint){
        return numa;
    }

}