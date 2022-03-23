// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Game.sol";

contract Bet {
	address public game;
	constructor(address _game){
		game = _game;
	}

    /**
        A good rule of thumb for function visibility is to start by making a function private. 
        If it needs to be called by EOAs, make it external. 
        If it needs to be called by both EOAs and other contracts, make it public.  
    */
	function calculatePayout(uint amount, int scoreDifference) private pure returns(uint) {
		uint abs = uint(scoreDifference > 0 ? scoreDifference : scoreDifference * -1);	
		uint odds = 2 ** abs;
		if(scoreDifference < 0) {
			return amount + amount / odds;
		}
		return amount + amount * odds;
	}

    // we could use an intermediate variable to make the code look better but this increases deployment gas cos
	function getScoreDifference(Game.Teams teamNumber) public view returns(int difference) {
		if( teamNumber == Game.Teams.Team1 ){
			difference = Game(game).team1Score() - Game(game).team2Score();
		}

		if( teamNumber == Game.Teams.Team2 ){
			difference = Game(game).team2Score() - Game(game).team1Score();
		}
	}

    function placeBet(Game.Teams teamNumber) external payable returns(uint){
		int payout = getScoreDifference(teamNumber);
		return calculatePayout(msg.value, payout);
	}
}