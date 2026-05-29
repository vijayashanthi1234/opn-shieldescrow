// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ShieldEscrow {
    address public admin;
    bool public isPaused;
    uint256 public totalEscrowsCreated;
    
    struct EscrowItem {
        address sender;
        address payable receiver;
        uint256 amount;
        bool isReleased;
    }
    
    mapping(uint256 => EscrowItem) public escrows;
    mapping(address => uint256) public lockedBalances;

    constructor() {
        admin = msg.sender;
    }

    // Creates an automated deposit vault
    function createEscrow(address payable _receiver) external payable {
        require(msg.value > 0, "Must send test funds to escrow");
        totalEscrowsCreated++;
        
        escrows[totalEscrowsCreated] = EscrowItem({
            sender: msg.sender,
            receiver: _receiver,
            amount: msg.value,
            isReleased: false
        });
        
        lockedBalances[msg.sender] += msg.value;
    }

    // Releases funds to the receiver
    function releaseEscrow(uint256 _id) external {
        EscrowItem storage item = escrows[_id];
        require(msg.sender == item.sender || msg.sender == admin, "Not authorized");
        require(!item.isReleased, "Already released");
        
        item.isReleased = true;
        lockedBalances[item.sender] -= item.amount;
        item.receiver.transfer(item.amount);
    }

    function togglePause() external {
        require(msg.sender == admin, "Only admin can call this");
        isPaused = !isPaused;
    }
}
