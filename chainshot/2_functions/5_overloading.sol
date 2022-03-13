// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    function double(uint x) external pure returns(uint sum) {
        sum = 2 * x;
    }

    function double(uint x, uint y) external pure returns(uint _x, uint _y){
        (_x, _y) = (2 * x, 2 * y);
    }
}