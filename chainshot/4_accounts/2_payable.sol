// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// There are two different types of Solidity addresses: address and address payable.
// The only difference between these types is that address payable has the methods transfer and send. 
contract Contract {
    address payable public owner;
    constructor(){
        owner = payable( msg.sender);
    } 
}