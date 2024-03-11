// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token2 is ERC20 {
    constructor(uint _totalSupply)
        ERC20("Token2", "Two")
    {
        _mint(msg.sender, _totalSupply);
    }

}

//0x58ABc33a28F011c2bE78950bb9f45D37b0b7fEd0 Token1
//0x3AfcF2F38dcf561ad800BaE6e2b75fcbd1C997f1 Token2
