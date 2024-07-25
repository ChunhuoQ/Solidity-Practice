// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  RemoveArray {

    uint[] public  arr= [1,2,3,4,5,6];

    function Remove(uint _index) public{
        require(_index < arr.length,"the index is longer than the length of Array");
        //把当前脚标的元素后面的往前移依次 覆盖掉 放置数组末尾 然后弹出 不改变原来顺序
        for(uint i=_index;i<arr.length-1;i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function get()public view  returns (uint[] memory){
        return arr;
    }

    


}