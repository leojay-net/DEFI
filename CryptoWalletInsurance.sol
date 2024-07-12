// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptoWalletInsurance {
    address public owner;
    uint8 public policyType;
    uint256 public premium;
    uint256 public coverageAmount;
    uint256 public lastPremiumPayment;
    bool public isActive;

    event PremiumPaid(uint256 amount);
    event ClaimFiled(uint256 amount);

    constructor(address _owner, uint8 _policyType) {
        owner = _owner;
        policyType = _policyType;
        isActive = false;

        if (policyType == 1) {
            premium = 0.1 ether;
            coverageAmount = 10 ether;
        } else if (policyType == 2) {
            premium = 0.2 ether;
            coverageAmount = 25 ether;
        } else {
            revert("Invalid policy type");
        }
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function payPremium() external payable onlyOwner {
        require(msg.value == premium, "Incorrect premium amount");
        lastPremiumPayment = block.timestamp;
        isActive = true;
        emit PremiumPaid(msg.value);
    }

    function fileClaim() external onlyOwner {
        require(isActive, "Insurance is not active");
        require(block.timestamp <= lastPremiumPayment + 30 days, "Premium has expired");

        payable(owner).transfer(coverageAmount);
        isActive = false;
        emit ClaimFiled(coverageAmount);
    }

}