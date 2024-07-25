// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract  ForWhile {
    function addTotal() public pure  returns(uint){
        uint numa;

        for(uint i = 0;i<50;i++){
            numa +=i;
        }
        // numa +0+1+2+3....+49
        return numa;
    }

    function forLoop() public pure returns (uint){
        uint numa;
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
            numa = i;
        } 
         return numa;
    
    }

    function whileLoopTest() public pure returns (uint){
        uint numa;
        uint256 j;
        while (j < 10) {
            j++;
            numa = j;
        }
        return numa;
    }


}