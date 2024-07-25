// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  Immutable {

    // immutable只能在构造器中被修改 不能在其它函数中修改
    address public  immutable MY_ADDRESS;
    uint public immutable numb;

    //constructor 指合约部署时跟着初始化的含糊  （构造函数）
    constructor(){
        MY_ADDRESS = msg.sender;
        numb = 200;
    }

    //不能修改
    // function mod public {
    //     numb = 210;
    // }
    
}