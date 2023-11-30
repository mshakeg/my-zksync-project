// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MathLib.sol";

contract ChildWithConstructorAndLibrary {
    uint public data;
    address public immutable creator;
    uint public additionalData;

    constructor(address _creator, uint _data) {
        creator = _creator;
        additionalData = MathLib.add(_data, 0); // Using the MathLib library
        data = 42; // Arbitrary number, just for the example
    }

    // Optional: Additional function to use the library
    function addNumbers(uint a, uint b) public pure returns (uint) {
        return MathLib.add(a, b);
    }
}
