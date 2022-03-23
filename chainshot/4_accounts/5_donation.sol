// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// In the latest versions of Solidity, contracts cannot receive ether by default.
// In order to receive ether, a contract must specify a payable function. 
// This is another keyword which affects the function's mutability similar to view and pure. 
contract Contract {
    address payable public owner;
    address payable public charity;

    constructor(address payable _charity){
        owner = payable( msg.sender);
        charity = _charity;
    } 

    // ust by adding a payable keyword to this function we are able to accept ether. 
    // The ether is automatically stored in the contract's balance, no need to do anything else! 
    function pay() public payable {   
        // do nothing
    }

    receive() external payable{ 
        // do nothing
    }

    // tips to the owner
    function tip() public payable{
        owner.transfer(msg.value);
    }

    // sends the balance available on the contract to chairty address
    function donate() public payable{
        charity.transfer( address(this).balance );
    }
}