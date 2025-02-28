// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract Deploy is Script {
    function run() external {
        vm.startBroadcast();
        new MyToken(1000 * 1e18);
        vm.stopBroadcast();
    }
}