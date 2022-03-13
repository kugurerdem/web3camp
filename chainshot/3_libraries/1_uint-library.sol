// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Libraries do not have state. 
// Libraries can only have pure functions.
library UIntFunctions {
    
    function isEven(uint a) public pure returns (bool result){
        result = (a % 2 == 0);
    } 
}