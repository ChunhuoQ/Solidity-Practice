// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  ReplaceArray {

    uint[] public  arr= [1,2,3,4,5,6];

    function Remove(uint _index) public{
        require(_index < arr.length,"the index is longer than the length of Array");
        //用最后的元素覆盖掉当前脚标元素 然后弹出最后一位  改变原来顺序
        arr[_index] = arr[arr.length-1];
        arr.pop();
    }

    function get()public view  returns (uint[] memory){
        return arr;
    }

    


}