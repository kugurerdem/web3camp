// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface ArcadeGame {
    function scores() external returns(uint, uint, uint);
}

contract Leaderboard {
	uint public highscore;
    
    function addGame(address game) external {
        (uint a, uint b, uint c) = ArcadeGame(game).scores();
        if( a > highscore)
            highscore = a;
        if( b > highscore)
            highscore = b;
        if( c > highscore)
            highscore = c;
    }
}