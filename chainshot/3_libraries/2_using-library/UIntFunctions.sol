// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library UIntFunctions {
    // libraries do not have state.
    function isEven(uint a) public pure returns (bool result){
        result = (a % 2 == 0);
    } 
}