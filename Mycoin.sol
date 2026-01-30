// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
// Import standard contracts
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
/**
* @title RewardToken
* @notice Simple capped ERC-20 where only the owner can mint.
*/
contract Pixel is ERC20Burnable, Ownable {
uint256 public immutable cap;
constructor(
uint256 initialSupply,
uint256 cap_
) ERC20("Pixel", "PXL") Ownable(msg.sender) {
require(initialSupply <= cap_, "Initial supply exceeds cap");
cap = cap_;
_mint(msg.sender, initialSupply);
}
/// @dev Only owner may mint, and cannot exceed cap.
function mint(address to, uint256 amount) external onlyOwner {
require(totalSupply() + amount <= cap, "Cap exceeded");
_mint(to, amount);
}
}