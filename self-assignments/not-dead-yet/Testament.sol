// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "./IERC20.sol";

contract Testament{	
	address owner;
	address heir;
    uint timeout;

	constructor(){
		owner = msg.sender;
        timeout = block.timestamp + 365 days;    
	}

    function updateTimeStamp() external onlyOwner{
        timeout = block.timestamp + 365 days;
    }

	function approve(address token_adr) external onlyOwner{
		IERC20(token_adr).approve(address(this), 2**256 - 1);
	} 

	function changeHeir(address _heir) external onlyOwner{
		heir = _heir;
	}

	function withdraw(address token_adr) external onlyPermissioned{
        require(block.timestamp > timeout, "The person is not dead yet!");
		IERC20 Token = IERC20(token_adr);
		Token.transferFrom(owner, msg.sender, Token.balanceOf(owner));
	}

	// MODIFIERS
	modifier onlyOwner {
      require(msg.sender == owner, "msg.sender should be owner");
      _;
	}

	modifier onlyPermissioned{
        require(msg.sender == owner || msg.sender == heir, "msg.sender is not permissioned");
		_;
	}
}