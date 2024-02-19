
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FreeFire is ERC20, Ownable(msg.sender) {

    uint public constant Coupen = 10;
    mapping(address => bool) private CoupenRedeemed;


    constructor() ERC20("FreeFire", "FF") {
        _mint(msg.sender, Coupen);
    }

    function mintingLoot(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function redeemingLoot() public {

        require(balanceOf(msg.sender) >= Coupen, "Balance is low , plz recharge");

        require(!CoupenRedeemed[msg.sender], "Coupen redeemed already , plz enter valid coupen");

        CoupenRedeemed[msg.sender] = true;
        _burn(msg.sender, Coupen);
    }

   function burningLoot(uint amount) public {
        _burn(msg.sender, amount);
    }

}
