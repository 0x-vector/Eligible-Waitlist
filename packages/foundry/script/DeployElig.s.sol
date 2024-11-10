// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Elig} from "../src/Elig.sol";

contract EligScript is Script {
    Elig public elig;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // elig = new Elig();

        vm.stopBroadcast();
    }
}
