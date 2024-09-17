// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title LogXToken
 * @author LogX Network
 */
contract LogXToken is ERC20 {
    /**
     * @dev Constructor for the LogXToken contract.
     * @param _initDistributor The address to which the total supply of LOGX tokens will be minted.
     */
    constructor(address _initDistributor) ERC20("LogX Network", "LOGX") {
        _mint(_initDistributor, 1_000_000_000 ether);
    }
}
