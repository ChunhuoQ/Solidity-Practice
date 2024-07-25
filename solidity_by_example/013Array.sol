// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  Array {

    uint[] public arr; //动态长度数组

    uint[] public  arr1 = [1,2,3,4,5]; //初始长度为5的动态长度数组

    uint[10] public fixArray;// 固定长度数组 长度为10

    function get(uint _index) public view  returns(uint) {
        return arr1[_index];
    }

    function getArray() public  view returns (uint[] memory){
        return  arr1;
    }

    //固定长度数组不能用push方法 fixArray不能用
    function pushTest(uint _i) public {
        arr.push(_i);
    }

    //删除（弹出）数组末尾的元素
    function popTest()public{
         arr1.pop();
    }

    //获取数组长度方法 length
    function getlength() public view returns (uint){
        return arr1.length;
    }

    //将数组指定位置设置为初始值0
    function deleteArrByIndex(uint _index) public{
        delete arr1[_index];
    }
    
    //在内存中创建一个数组 只能创建一个固定长度的
    function examples() external{
        //创建以一个长度为5的固定数组
        uint[] memory numa = new uint[](5);
    }

}