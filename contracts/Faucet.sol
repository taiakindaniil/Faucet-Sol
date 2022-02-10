// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Owned {

    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    modifier onlyOwner {
        require(msg.sender == owner, "This function is restricted to the contract's owner");
        _;
    }

}

contract Mortal is Owned {
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}

contract Faucet is Mortal {
    event Withdrawal(address indexed to, uint amount);
    event Deposit(address indexed from, uint amount);

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint withdraw_amount) public {
        require(withdraw_amount <= 0.1 ether);

        payable(msg.sender).transfer(withdraw_amount);
        emit Withdrawal(msg.sender, withdraw_amount);
    }

}

