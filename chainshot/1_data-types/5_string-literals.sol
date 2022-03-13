// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Contract {
    // string can be stored in both bytes and in string
    // if string is shorter than 32 bytes it is more efficient to use bytes32
	bytes a1 = "Hello World"; 
    string a2 = "Hello World";

    // quite often long strings are stored in IPFS and we only store hash of the IPFS string here
    bytes32 public msg1 = "Hello World";
    string public msg2 = "Hi Computer! How are you doing? Hope you are ok!";
}

