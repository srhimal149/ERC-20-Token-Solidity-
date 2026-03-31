# ERC-20 Capped Token — Solidity Smart Contract (Pixel / PXL)

![Solidity](https://img.shields.io/badge/Solidity-0.8.24-363636?logo=solidity) ![Ethereum](https://img.shields.io/badge/Ethereum-OpenZeppelin-3C3C3D?logo=ethereum) ![License](https://img.shields.io/badge/License-MIT-green)

## Overview

A capped ERC-20 token named **"Pixel" (PXL)** implemented in Solidity 0.8.24, deployed on Ethereum using Remix IDE and MetaMask. The contract extends OpenZeppelin's `ERC20Burnable` and `Ownable` standards, restricting minting to the contract owner with a hard supply cap enforced on-chain.

The contract is compact (25 lines), clean, and production-ready.

---

## Contract: `Mycoin.sol`

```
Token Name:   Pixel
Token Symbol: PXL
Standard:     ERC-20 (ERC20Burnable + Ownable)
Solidity:     ^0.8.24
```

### Inheritance
- `ERC20Burnable` — extends standard ERC-20 with `burn()` and `burnFrom()` functions
- - `Ownable` — restricts sensitive operations to the contract deployer
 
  - ### Key Features
 
  - | Feature | Description |
  - |---------|-------------|
  - | **Capped Supply** | `uint256 public immutable cap` — hard ceiling on total token supply |
  - | **Owner-Only Minting** | `function mint(address to, uint256 amount) external onlyOwner` |
  - | **Supply Cap Enforcement** | `require(totalSupply() + amount <= cap, "Cap exceeded")` |
  - | **Burnable** | Token holders can burn their own tokens via `ERC20Burnable` |
  - | **Initial Supply** | Set at deployment; must be ≤ cap |
 
  - ### Constructor
  - ```solidity
    constructor(uint256 initialSupply, uint256 cap_)
        ERC20("Pixel", "PXL") Ownable(msg.sender) {
        require(initialSupply <= cap_, "Initial supply exceeds cap");
        cap = cap_;
        _mint(msg.sender, initialSupply);
    }
    ```

    ---

    ## Deployment

    The contract was deployed on the **Ethereum Sepolia/Goerli testnet** via Remix IDE with MetaMask.

    **Steps to deploy:**
    1. Open `Mycoin.sol` in [Remix IDE](https://remix.ethereum.org)
    2. 2. Install OpenZeppelin via npm: `@openzeppelin/contracts`
       3. 3. Compile with Solidity 0.8.24
          4. 4. Connect MetaMask to Sepolia testnet
             5. 5. Deploy with `initialSupply` and `cap` constructor arguments
               
                6. ---
               
                7. ## Technologies Used
               
                8. | Tool | Purpose |
                9. |------|---------|
                10. | Solidity 0.8.24 | Smart contract language |
                11. | OpenZeppelin | ERC20Burnable + Ownable base contracts |
                12. | Remix IDE | Browser-based development & deployment |
                13. | MetaMask | Ethereum wallet & testnet signing |
               
                14. ## Getting Started
               
                15. ```bash
                    git clone https://github.com/srhimal149/ERC-20-Token-Solidity-.git
                    ```

                    Open `Mycoin.sol` in Remix IDE and follow the deployment steps above.

                    ## Author

                    **Md Saifur Rahman Himal**
                    MSc FinTech (Distinction Candidate) | Blockchain & Smart Contract Development
                    [LinkedIn](https://www.linkedin.com/in/md-saifur-rahman-himal-70a0941ba) | [GitHub](https://github.com/srhimal149)

                    ## License

                    MIT License
