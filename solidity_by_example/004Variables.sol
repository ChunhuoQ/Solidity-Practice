// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Variables{

    //通过内置的Type函数获取当前的类型变量最大值最小值
    int32 public  a = type(int32).min;

    //Local存在函数内存中  调用才会有  blockchain存在连上要消耗gas global默认的全局变量，整个以太坊自带的变量
    string public text ="Hello,Jiakun"; //存在区块链上的

    uint numa =88;

    function dosomething() public view returns (uint ,uint ,address){
        uint numb = 99; //内存变量 作用域在这个函数
        uint time = block.timestamp; // 当前时间戳 1970年到当前的秒数
        address sender = msg.sender;//调用这个函数的地址
        return (numb, time, sender);

    }

}