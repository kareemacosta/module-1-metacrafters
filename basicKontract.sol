//SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

contract basicKontract {
    address private admin;
    uint private value;

    constructor() public {
        admin = msg.sender;
        value = 0;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Access denied: only the admin can call this function.");
        _;
    }

    function doSomething() public onlyAdmin {
        value += 1;
    }

    function doSomethingElse() public onlyAdmin {
        value *= 2;
    }

    function getValue() public view returns(uint) {
        return value;
    }

    function setValue(uint newValue) public onlyAdmin {
        value = newValue;
    }
}

