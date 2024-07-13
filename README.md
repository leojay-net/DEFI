# DeFi Insurance Provider Protocol

This project implements a decentralized insurance provider protocol for crypto wallets and crypto-backed loans using Solidity smart contracts.

## Description

The DeFi Insurance Provider Protocol is a decentralized system that offers insurance for crypto wallets and crypto-backed loans. It uses a factory contract model to create individual insurance policies for users, providing flexibility and security in managing different types of insurance contracts.

## Features

- Two types of insurance: Crypto wallet insurance and collateral protection for crypto-backed loans
- Factory contract model: Each user gets a separate insurance contract
- Multiple policy types with different premiums and coverage amounts/percentages
- Premium payment and claim filing functionality

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create new files for each contract (InsuranceFactory.sol, CryptoWalletInsurance.sol, CryptoLoanInsurance.sol) by clicking on the "+" icon in the left-hand sidebar. Copy and paste the respective contract code into each file.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version, and then click on the "Compile" button for each contract.

Once the code is compiled, you can deploy the InsuranceFactory contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the InsuranceFactory contract from the dropdown menu, and then click on the "Deploy" button.

After deployment, users can interact with the factory contract to create their individual insurance policies.

## Contracts

### InsuranceFactory

- Creates new insurance contracts for users
- Keeps track of users' insurance contracts

#### Key Functions:
- `createWalletInsurance()`: Creates a new crypto wallet insurance contract for a user
- `createLoanInsurance()`: Creates a new crypto loan insurance contract for a user

### CryptoWalletInsurance

- Two policy types with different premiums and coverage amounts
- Premium payment functionality
- Claim filing with basic checks

#### Key Functions:
- `payPremium()`: Allows users to pay their insurance premium
- `fileClaim()`: Allows users to file an insurance claim

### CryptoLoanInsurance

- Two policy types with different premiums and coverage percentages
- Premium payment functionality
- Loan amount setting
- Claim filing with basic checks

#### Key Functions:
- `payPremium()`: Allows users to pay their insurance premium
- `setLoanAmount()`: Sets the loan amount for the insurance policy
- `fileClaim()`: Allows users to file an insurance claim

## Usage

1. Deploy the InsuranceFactory contract
2. Users create insurance policies by calling `createWalletInsurance()` or `createLoanInsurance()` on the factory contract
3. Users interact with their individual insurance contracts to pay premiums and file claims

## Authors

Aleonomoh Joseph
