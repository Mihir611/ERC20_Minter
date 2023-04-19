// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract customToken is ERC20, ERC20Burnable, Ownable {
    constructor(string memory _name, string memory _symbol, uint256 amount) ERC20(_name, _symbol) {
        mint(msg.sender, amount * 1e18);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}