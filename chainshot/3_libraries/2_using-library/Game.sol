import "./UIntFunctions.sol";
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Game {
    uint public participants;
    bool public allowTeams;

    constructor(uint _participants){
        participants = _participants;
        allowTeams = UIntFunctions.isEven(participants);
    }
}