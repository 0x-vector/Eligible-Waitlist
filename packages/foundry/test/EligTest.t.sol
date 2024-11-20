// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Elig} from "../src/Elig.sol";
import {DeployElig} from "../script/DeployElig.s.sol";

contract EligTest is Test {
    address public owner;
    address public USER = makeAddr("user");
    address public USER2 = makeAddr("user2");
    address[] public eligAddresses;
    uint256 public constant TOTAL_SUPPLY = 1000000000 * 10 ** 18; // 1000000000 with 18 decimals
    uint256 public constant SENDING_AMOUNT = 100 * 10 ** 18; // 100 with 18 decimals

    Elig public elig;

    function setUp() public {
        // DeployElig deployElig = new DeployElig();
        owner = address(this);
        elig = new Elig("Eligible", "ELIG", 1000000000);
        vm.deal(owner, TOTAL_SUPPLY);
    }

    function testInitialSetup() public {
        // check token initials
        assertEq(elig.name(), "Eligible");
        assertEq(elig.symbol(), "ELIG");

        // check total supply and owner's balance equals initial supply;
        assertEq(elig.totalSupply(), TOTAL_SUPPLY);
        assertEq(elig.balanceOf(owner), TOTAL_SUPPLY);
    }

    function testTransferIsWorking() public {
        // eligAddresses = [USER, USER2];
        // elig.transferTokens(USER, SENDING_AMOUNT);

        // // check if amount sent equals the amount recieved.
        // assertEq(elig.balanceOf(owner), TOTAL_SUPPLY - SENDING_AMOUNT);
        // assertEq(elig.balanceOf(USER), SENDING_AMOUNT);
    }
}
