// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Elig} from "../src/Elig.sol";

contract DeployElig is Script {
    Elig public elig;

    // function setUp() public {}

    function run() public {
        // Let's load the environmental variables
        string memory tokenName = vm.envString("Eligible");
        string memory tokenSymbol = vm.envString("Elig");
        uint256 initialSupply = vm.envUint("1000000000");

        // Start braodcast on private key of deployer.
        vm.startBroadcast();

        Elig elig = new Elig(tokenName, tokenSymbol, initialSupply);

        vm.stopBroadcast();
        // Stop braodcast on private key of deployer.

        // Let's log the deploying address
        console.log("Deployed to:", address(elig));

        // Okay, that should do it.
    }
}
