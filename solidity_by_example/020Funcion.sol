// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract  Funcion {

uint public num = 88;

// pure 不用区块链上的任何变量
function returnMany() public pure  returns (uint, bool, uint){
return (1,true,22);
}

// 访问区块脸上的变量需要用view关键字
function returnManyView() public view  returns (uint x, bool b, uint y){
return (1,true,num);
}

// 给返回值名称赋值可以直接返回
function returnManyViewXBY() public view  returns (uint x, bool b, uint y){
 x=1;
 b=false;
 y=num;
}

// 多返回值接收返回以及省略方式
function destructingAssignments() public pure  returns (uint , bool , uint, uint, uint){
(uint i,bool b, uint j) = returnMany();
(uint x,,uint y) = (4,5,6);
return (i,b,j,x,y);
}

function arrinput(uint[] memory _arr) public {

}


uint[] public arr;

//数组可以作为输入和返回参数 map类型不可以
function getArr() public  view returns (uint[] memory){
    return arr;
}

}