# 🛡️ OPN ShieldEscrow

### Privacy-Preserving Prediction Markets & Escrow Infrastructure for OPN Chain

[![OPN Builder Program](https://img.shields.io/badge/OPN-Builder%20Program-blue)](https://builders.iopn.tech/)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.20-green)](#)
[![Status](https://img.shields.io/badge/Status-Testnet%20Deployed-success)](#)

---

# 📌 One-Line Summary

OPN ShieldEscrow is a privacy-preserving escrow protocol for prediction markets on OPN Chain, using commit-reveal cryptography to separate user identity from market participation while maintaining transparent on-chain settlement.

---

# 🚀 Project Overview

Prediction markets provide powerful mechanisms for information discovery and collective forecasting. However, most existing systems expose participant identities, collateral positions, and payout destinations directly on-chain.

OPN ShieldEscrow explores a different approach.

The protocol introduces a cryptographic commitment layer that enables users to participate in prediction markets without publicly linking wallet addresses to market activity. Through a commit-reveal escrow architecture, collateral deposits, participation records, and reward claims can be coordinated while reducing unnecessary exposure of user behavior.

Built natively on OPN Chain, ShieldEscrow serves as a foundational DeFi primitive for:

* Prediction Markets
* Conditional Escrow Systems
* Private Settlement Infrastructure
* Anonymous Reward Distribution
* Future Identity-Aware Financial Applications

---

# 🎯 Problem Statement

Traditional prediction markets reveal:

* Wallet addresses
* Participation history
* Position sizes
* Payout destinations
* Market preferences

This creates privacy concerns for users and may discourage participation in sensitive or high-value markets.

ShieldEscrow addresses this challenge by introducing cryptographic commitments that separate identity from participation while preserving deterministic settlement and on-chain verification.

---

# 💡 Solution

ShieldEscrow uses a commit-reveal architecture where users lock collateral into escrow contracts using a secret commitment.

Instead of publicly recording direct user participation:

1. Users generate a private secret.
2. The secret is hashed using `keccak256`.
3. The commitment is stored on-chain.
4. Markets settle normally.
5. Users later reveal the secret to claim rewards.

This process allows users to prove ownership without exposing participation details during market execution.

---

# ⚙️ Why OPN Chain?

ShieldEscrow was designed specifically for OPN Chain because:

* Fast confirmation times improve settlement UX.
* Low transaction costs enable frequent escrow interactions.
* Future NeoID compatibility supports privacy-aware identity systems.
* Builder-focused infrastructure encourages experimentation with advanced DeFi primitives.
* OPN's long-term vision aligns with privacy, sovereignty, and decentralized ownership.

The protocol demonstrates how privacy-oriented financial coordination can be implemented efficiently within the OPN ecosystem.

---

# 🏗️ Technical Architecture

## High-Level Flow

```text
User Creates Market
        │
        ▼
Generate Condition Hash
        │
        ▼
Deposit Collateral
        │
        ▼
Generate Commitment
(keccak256(secret))
        │
        ▼
Store Commitment On-Chain
        │
        ▼
Market Resolution
        │
        ▼
Reveal Secret
        │
        ▼
Verify Commitment
        │
        ▼
Release Funds
```

---

## Protocol Components

### Market Registry

Tracks active prediction markets and associated conditions.

### Escrow Vault

Stores collateral securely until settlement.

### Commitment Engine

Generates and verifies cryptographic commitments.

### Settlement Module

Processes outcome verification and reward calculations.

### Claim Engine

Allows users to reveal secrets and withdraw funds.

---

# 🔐 Privacy Model

ShieldEscrow currently uses a commit-reveal mechanism to provide privacy benefits.

Current protections include:

* Separation of participation from wallet activity
* Delayed identity disclosure
* Reduced visibility of market behavior
* Commitment-based verification

Future upgrades will explore:

* zk-SNARK verification
* Selective disclosure
* NeoID integration
* Privacy-preserving reputation systems

---

# 📊 OPN Builder Program Alignment

## 1. OPN Chain Integration (30%)

* Native deployment on OPN Testnet
* Uses OPN infrastructure for escrow settlement
* Designed for future NeoID compatibility
* Supports OPN-native DeFi experimentation

## 2. Technical Quality (25%)

* Solidity 0.8.20
* Modular architecture
* Commitment verification system
* Deterministic settlement logic
* Structured state transitions

## 3. Product & UX (20%)

* Simple user workflow
* Minimal onboarding complexity
* Wallet-based interaction
* Transparent claim process

## 4. Innovation (15%)

* Privacy-preserving prediction market architecture
* Identity abstraction using commitments
* Foundation for future zero-knowledge integrations

## 5. Builder Commitment (10%)

* Active repository development
* Public deployment
* Iterative roadmap
* Planned Season 2 enhancements

---

# 🔧 Deployment Information

| Item             | Value                  |
| ---------------- | ---------------------- |
| Network          | OPN Testnet            |
| Compiler         | Solidity 0.8.20        |
| Contract Type    | Escrow + Commit-Reveal |
| Deployment Block | 17487995               |
| Status           | Live MVP               |

### Contract Address

```text
0xa0772b29afBc2538DDfF58Ae72DA61Ab4725536A
```

---

# 🧪 Local Development

## Prerequisites

* Node.js v18+
* npm
* Hardhat

---

## Clone Repository

```bash
git clone https://github.com/vijayashanthi1234/opn-shieldescrow.git

cd opn-shieldescrow
```

---

## Install Dependencies

```bash
npm install
```

---

## Compile Contracts

```bash
npx hardhat compile
```

---

## Run Tests

```bash
npx hardhat test
```

---

## Start Local Development Server

```bash
npm run dev
```

---

# 🔒 Security Considerations

Current MVP protections include:

* Solidity 0.8.x overflow protection
* Commitment verification before claims
* Controlled state transitions
* Separation of settlement and withdrawal logic

Planned improvements include:

* Expanded automated testing
* Independent code review
* Formal security assessment
* zk-proof verification layer

---

# 🛣️ Development Roadmap

## Phase 1 — Core Infrastructure ✅

* Escrow contract development
* Commitment verification system
* Initial frontend implementation

---

## Phase 2 — Testnet Deployment ✅

* OPN Testnet deployment
* Contract verification
* Initial UX testing

---

## Phase 3 — Oracle Integration 🚧

* Outcome verification framework
* Automated market settlement
* Enhanced dispute handling

---

## Phase 4 — Identity & Privacy Expansion 🚧

* NeoID integration
* Privacy-preserving reputation systems
* Selective disclosure controls
* zk-SNARK proof research

---

## Phase 5 — Ecosystem Infrastructure 🔭

* Multi-market support
* Cross-protocol integrations
* SDK for OPN developers
* Modular escrow APIs

---

# 📷 Screenshots

### Landing Page

*Add screenshot here*

### Wallet Connection

*Add screenshot here*

### Deposit Flow

*Add screenshot here*

### Claim Flow

*Add screenshot here*

### Contract Deployment

*Add explorer screenshot here*

---

# 🌐 Future Vision

ShieldEscrow is intended to evolve beyond prediction markets into a reusable privacy-oriented settlement layer for the OPN ecosystem.

Potential applications include:

* Private crowdfunding
* Confidential grant distribution
* Anonymous DAO voting incentives
* Escrow coordination services
* Identity-aware financial applications

---

# 🙌 Built for the OPN Builder Program

Developed as part of the OPN Builder Program to explore how privacy, escrow infrastructure, and decentralized prediction markets can be combined into a reusable on-chain primitive for the next generation of open finance applications.
