// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/**
* Choose a, b so that cafe = 0xcafe
*/
contract Contract {
    bytes2 public a = 0xc0f0; // 
    bytes2 public b = 0x0a0e; // 
    bytes2 public cafe = a | b;  // 0xcafe
}

