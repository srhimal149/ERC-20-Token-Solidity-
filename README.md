# ERC-20 Token — Solidity Smart Contract

![Solidity](https://img.shields.io/badge/Solidity-0.8.x-363636?logo=solidity) ![Ethereum](https://img.shields.io/badge/Ethereum-Testnet-3C3C3D?logo=ethereum) ![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-Standards-4E5EE4) ![License](https://img.shields.io/badge/License-MIT-green)

## Overview

A fully functional ERC-20 token deployed on the Ethereum network, implementing the complete token standard per OpenZeppelin specifications. The contract supports minting, token transfers, and the approval/allowance mechanism, and was deployed and tested using Remix IDE, MetaMask, and interacted with programmatically via web3.py.

## Key Features

- **ERC-20 Compliant** — Full implementation of the OpenZeppelin ERC-20 standard
- **Minting** — Owner-controlled token minting functionality
- **Transfer** — Standard `transfer()` and `transferFrom()` functions
- **Approval & Allowance** — Delegated spending via `approve()` and `allowance()`
- **Deployed on Testnet** — Tested and verified on Ethereum testnet via MetaMask
- **web3.py Integration** — Programmatic contract interaction via Python

## Smart Contract Functions

| Function | Description |
|----------|-------------|
| `mint(address, amount)` | Creates new tokens and assigns them to an address |
| `transfer(to, amount)` | Transfers tokens to another address |
| `approve(spender, amount)` | Approves a third party to spend tokens |
| `transferFrom(from, to, amount)` | Executes a delegated transfer |
| `allowance(owner, spender)` | Returns the remaining approved amount |
| `balanceOf(address)` | Returns the token balance of an address |
| `totalSupply()` | Returns the total token supply |

## Technology Stack

| Tool | Purpose |
|------|---------|
| Solidity 0.8.x | Smart contract language |
| OpenZeppelin | Secure, audited contract standards |
| Remix IDE | Browser-based Solidity development & deployment |
| MetaMask | Ethereum wallet & testnet interaction |
| web3.py | Python-based contract interaction |

## Project Structure

```
├── ERC20Token.sol    # Main smart contract
└── README.md
```

## Deployment

The contract was deployed on the **Sepolia / Goerli Ethereum testnet** using Remix IDE and MetaMask. Post-deployment, interactions (minting, transfers, balance checks) were scripted using web3.py.

### Example web3.py Interaction

```python
from web3 import Web3

w3 = Web3(Web3.HTTPProvider("https://sepolia.infura.io/v3/YOUR_INFURA_KEY"))
contract = w3.eth.contract(address=CONTRACT_ADDRESS, abi=ABI)

# Check balance
balance = contract.functions.balanceOf(WALLET_ADDRESS).call()
print(f"Token Balance: {balance}")
```

## Getting Started

1. Open `ERC20Token.sol` in [Remix IDE](https://remix.ethereum.org)
2. Compile using Solidity 0.8.x
3. Connect MetaMask to Sepolia testnet
4. Deploy via Remix's "Deploy & Run" tab
5. Interact using Remix UI or web3.py scripts

## Author

**Md Saifur Rahman Himal**
MSc FinTech (Distinction Candidate) | Blockchain & Smart Contract Development
[LinkedIn](https://www.linkedin.com/in/md-saifur-rahman-himal-70a0941ba) | [GitHub](https://github.com/srhimal149)

## License

MIT License — feel free to use and adapt with attribution.
