// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    // RETURNS 2 * x
    function double(uint x) external pure returns(uint sum) {
        sum = 2 * x;
    }
}