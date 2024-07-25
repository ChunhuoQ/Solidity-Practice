// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract  FunctionModifier {

    address public owner; //0x0000...
    uint public x = 10;
    bool public locked; //初始为false

    constructor(){
        owner = msg.sender;//把owner地址变成合约部署者
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"you are not owner;");
        _;//代表引用当前修饰符的函数主体在这里执行
    }

    function modifyOwner(address addr) public onlyOwner{
        owner = addr;
    }

    //modifier 快捷写代码  修饰符
    modifier VaildAddress(address addr){
        require(addr != address(0),"Not valid address!");
        _;
    }

    function modifyOwnerVaildAddress(address addr) public onlyOwner VaildAddress(addr){
        owner = addr;
    }

    //避免重入攻击,避免主体函数没有执行完时再次调用这个函数
    modifier noReenterancy(){
        require(!locked,"No Reenterancy!");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReenterancy{
        x-=i;
        if(i>1){
            decrement(i-1);
        }
    }

}