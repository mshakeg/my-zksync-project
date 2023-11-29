// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MathLib.sol";

contract Calculator {
    function addNumbers(uint a, uint b) public view returns (uint) {
        return MathLib.add(a, b);
    }
}
