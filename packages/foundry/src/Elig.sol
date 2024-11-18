// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// Imports
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Elig is ERC20, Ownable {
    address[] public elig_Addresses;

    // error Elig_notEnoughBalance();

    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    function transferTokens(
        address receiver,
        uint256 amount
    ) external onlyOwner {
        // elig_Addresses = receivers;
        uint256 totalAmount = elig_Addresses.length * amount;

        require(balanceOf(msg.sender) >= totalAmount, "Not Enough Balance!!!");

        for (uint256 i = 0; i < elig_Addresses.length; i++) {
            elig_Addresses[i] = receiver;
            _transfer(msg.sender, receiver, amount);
        }
    }
}
