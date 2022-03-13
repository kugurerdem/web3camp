// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

library Prime {
    function dividesEvenly(uint x, uint y) public pure returns (bool){
        return x % y == 0;
    }

    function isPrime(uint x) public pure returns (bool){
        return isPrime(x, x-1);
    }

    function isPrime(uint x, uint y) private pure returns(bool){
        if( y == 1)
            return true;
        if( dividesEvenly(x, y))
            return false;
        return isPrime(x, y-1);
    }
}