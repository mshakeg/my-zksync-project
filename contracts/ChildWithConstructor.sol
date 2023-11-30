// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ChildWithConstructor {
    uint public data;
    address public immutable creator;
    uint public additionalData;

    constructor(address _creator, uint _data) {
        creator = _creator;
        additionalData = _data;
        data = 42; // Arbitrary number, just for the example
    }
}
