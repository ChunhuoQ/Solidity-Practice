// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  Map {
    // key value 可以是string bool address bytes 或者发某个已经部署的合约
    // valuetype 可以是多种类型的变量 甚至是另外一个mapping或者一个array
    mapping(address=>uint) public myMap; //定义一个map方法 将地址和数字匹配起来

    function getUintByAdd(address _add) public view returns(uint){
        return myMap[_add];
    }

    function set(address _add,uint _i) public{
        //更新传入的地址和数字
        myMap[_add] = _i;
    }

    function  deleteNum(address _add) public{
        delete myMap[_add];
    }

}