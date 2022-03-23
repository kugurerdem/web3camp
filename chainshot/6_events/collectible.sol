// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Collectible {
    event Deployed(address indexed owner);
    event Transfer(address indexed original_owner, address indexed new_owner);
    event ForSale(uint price, uint timestamp);
    event Purchase(uint amount, address indexed buyer);

    address public owner;
    uint price;
    constructor(){
        owner = msg.sender;
        emit Deployed(owner);        
    }

    function transfer(address _owner) public{
        require(msg.sender == owner, "Message sender is not Owner!");
        owner = _owner;
        emit Transfer(msg.sender, owner);
    }

    function markPrice(uint _price) external{
        require(msg.sender == owner, "Message sender is not Owner!");
        price = _price;
        emit ForSale(price, block.timestamp);
    }

    function purchase() external payable{
        require(price != 0, "not-for-sale");
        require(msg.value >= price, "should pay more");

        payable(owner).transfer(msg.value);
        emit Transfer(owner, msg.sender);
        owner = msg.sender;
        
        emit Purchase(msg.value, owner);
        price = 0;
    }
}