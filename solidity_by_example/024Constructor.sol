// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// 使用参数初始化父级合约有两种方法。

// 在继承列表中将参数传递到这里。
contract B is X("Input to X"), Y("Input to Y") {}


contract C is X, Y {
    // 在构造函数中传递参数、
    // 类似于函数修饰符modifier。
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// 父级构造函数总是按照继承顺序调用。
// 与子合约的构造函数中列出的父合约顺序无关。
// 子合约的构造函数中列出的父合约的顺序。

// 构造函数的调用顺序：
// 1. X
// 2. Y
// 3. D
contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}

// 构造函数被调用的顺序：
// 1. X
// 2. Y
// 3. E
contract E is X, Y {
    constructor() Y("Y was called") X("X was called") {}
}