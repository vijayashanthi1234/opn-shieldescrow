// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ShieldEscrow {
    address public admin;
    bool public isPaused;
    uint256 public totalEscrowsCreated;
    mapping(address => uint256) public lockedBalances;

    constructor() {
        admin = msg.sender;
    }

    function togglePause() external {
        require(msg.sender == admin, "Only admin can call this");
        isPaused = !isPaused;
    }

    function getLockedBalance(address _user) external view returns (uint256) {
        return lockedBalances[_user];
    }
}
