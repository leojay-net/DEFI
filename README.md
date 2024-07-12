# DeFi Insurance Provider Protocol

This project implements a decentralized insurance provider protocol for crypto wallets and crypto-backed loans using Solidity smart contracts.

## Overview

The protocol consists of three main contracts:

1. InsuranceFactory: Creates and tracks individual insurance policies for users.
2. CryptoWalletInsurance: Implements wallet insurance policies.
3. CryptoLoanInsurance: Implements loan insurance policies.

## Features

- Two types of insurance: Crypto wallet insurance and collateral protection for crypto-backed loans.
- Factory contract model: Each user gets a separate insurance contract.
- Multiple policy types with different premiums and coverage amounts/percentages.
- Premium payment and claim filing functionality.

## Contracts

### InsuranceFactory

- Creates new insurance contracts for users.
- Keeps track of users' insurance contracts.

### CryptoWalletInsurance

- Two policy types with different premiums and coverage amounts.
- Premium payment functionality.
- Claim filing with basic checks.

### CryptoLoanInsurance

- Two policy types with different premiums and coverage percentages.
- Premium payment functionality.
- Loan amount setting.
- Claim filing with basic checks.

## Usage

1. Deploy the InsuranceFactory contract.
2. Users create insurance policies by calling `createWalletInsurance()` or `createLoanInsurance()` on the factory contract.
3. Users interact with their individual insurance contracts to pay premiums and file claims.
