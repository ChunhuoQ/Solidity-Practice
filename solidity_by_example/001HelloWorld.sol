// SPDX-License-Identifier: MIT
pragma solidity  >0.6.0 <0.9.0;
contract HelloWorld{
    string public greet = "HelloWorld";
    string storeMsg;

    function set(string memory message) public {
        storeMsg = message;
    }

    function get() public view returns (string memory) {
        return storeMsg;
    }

}