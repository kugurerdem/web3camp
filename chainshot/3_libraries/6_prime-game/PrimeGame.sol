import "./Prime.sol";
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract PrimeGame {
    function isWinner() public view returns (bool){
        return Prime.isPrime(block.number);
    }
}