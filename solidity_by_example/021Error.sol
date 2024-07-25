// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract  ErrorTest {
        //Require 这个关键字用于以下条件
        //- inputs 输入
        //- conditions 执行前的条件是否满足
        //- return 返回值是否满足条件

        function testError(uint i)public pure{
            require(i<10,"i must greated than Ten!");
        }

        function testErrorRevert(uint i)public pure{
            if(i<10){
            revert("i must greated than Ten!");
            }
        }
        uint public num = 20;

        function testAssert() public  view {
            //assert 这个关键词只能用于测试内部错误 和 不变量
            assert (num == 0);
        }

}