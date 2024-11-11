// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// Imports
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Elig is ERC20, Ownable {
    address[] public eligAddresses;

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    function transferTokens(
        address[] calldata receivers,
        uint256 amount
    ) external onlyOwner {
        eligAddresses = receivers;
        uint256 totalAmount = receivers.length * amount;

        require(balanceOf(msg.sender) >= totalAmount, "Not enough tokens!!");

        for (uint256 i = 0; i < receivers.length; i++) {
            _transfer(msg.sender, receivers[i], amount);
        }
    }
}
