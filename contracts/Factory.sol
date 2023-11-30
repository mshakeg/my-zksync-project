// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Child.sol";

contract Factory {
    Child[] public children;

    function createChild() public {
        Child child = new Child();
        children.push(child);
    }

    function getDeployedChildren() public view returns (Child[] memory) {
        return children;
    }
}
