// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  Todos {

    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    //创建一个学生数组 数组结构体有三个属性
    struct Student{
        string name;
        uint grade;
        bool isPass;
    }

    Student[] public students;

    function set(string calldata _name,uint _grade,bool _isPass) public{
        //往数组里传参方法1
        students.push(Student(_name,_grade,_isPass));
        //通过关键字传参'
        students.push(Student({name:_name,grade:_grade,isPass:_isPass}));
        //先通过memory 创建一个空对象
        Student memory mystu;
        mystu.name = _name;
        mystu.grade=_grade;
        mystu.isPass =_isPass;
        students.push(mystu);
    }
    //当变量前加了一个public函数修饰符的时候  等于自动帮他创建了一个get函数
    function get(uint _index)public view  returns (string memory,uint, bool){
        return (students[_index].name,students[_index].grade,students[_index].isPass);
    }

    function setName(uint _index,string calldata _name)public{
        Student storage newStudent = students[_index];
        newStudent.name = _name;
    }


}