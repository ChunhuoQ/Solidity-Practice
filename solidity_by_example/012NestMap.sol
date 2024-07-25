// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  NestMap {

    //将地址和另一个mapping匹配
    mapping (address=>mapping (uint => bool)) public  nested;

    function get(address _add, uint _num) public view  returns (bool){
      return   nested[_add][_num];
    }

    function set(address _add, uint _num, bool _boo) public {
         nested[_add][_num]=_boo;
    }

     function deleteByKey(address _add, uint _num) public {
        delete nested[_add][_num];
    }


}