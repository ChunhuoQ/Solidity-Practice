// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  IfElse {

    function foo(uint x) public  pure  returns (uint){
        if(x<10){
            return 0;
        }else if(x<20){
            return 1;
        }else {
            return 2;
        }
    }

    function ternaly(uint _x) public  pure returns(uint){
        // if(_x < 10){
        //     return 1;
        // }else {
        //     return 2;
        // }
        return _x < 10 ? 1 : 2;
    }

}
