// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CryptoWalletInsurance.sol";
import "./CryptoLoanInsurance.sol";

contract InsuranceFactory {
    mapping(address => address) public walletInsurances;
    mapping(address => address) public loanInsurances;

    event WalletInsuranceCreated(address indexed user, address insuranceContract);
    event LoanInsuranceCreated(address indexed user, address insuranceContract);

    function createWalletInsurance(uint8 policyType) external {
        require(walletInsurances[msg.sender] == address(0), "Wallet insurance already exists");
        CryptoWalletInsurance newInsurance = new CryptoWalletInsurance(msg.sender, policyType);
        walletInsurances[msg.sender] = address(newInsurance);
        emit WalletInsuranceCreated(msg.sender, address(newInsurance));
    }

    function createLoanInsurance(uint8 policyType) external {
        require(loanInsurances[msg.sender] == address(0), "Loan insurance already exists");
        CryptoLoanInsurance newInsurance = new CryptoLoanInsurance(msg.sender, policyType);
        loanInsurances[msg.sender] = address(newInsurance);
        emit LoanInsuranceCreated(msg.sender, address(newInsurance));
    }
}