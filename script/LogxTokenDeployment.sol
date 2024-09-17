// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/LogxToken.sol";

contract DeployLogX is Script {
    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY_ADMIN"));

        // // Deploy the contract
        address initDistributor = vm.envAddress("INIT_DISTRIBUTOR");
        LogXToken logxToken = new LogXToken(initDistributor);

        console.log("LogX address: ", address(logxToken));
        console.log("Init distributor address: ", initDistributor);
        console.log("LogX int distributor balance: ", logxToken.balanceOf(initDistributor));
        console.log("LogX total supply: ", logxToken.totalSupply());
        console.log("LogX name: ", logxToken.name());
        console.log("LogX symbol: ", logxToken.symbol());

        vm.stopBroadcast();
    }
}