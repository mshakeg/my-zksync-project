// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ChildWithConstructor.sol";

contract FactoryWithConstructor {
    ChildWithConstructor[] public children;

    function createChild(uint _data) public {
        ChildWithConstructor child = new ChildWithConstructor(msg.sender, _data);
        children.push(child);
    }

    function getDeployedChildren() public view returns (ChildWithConstructor[] memory) {
        return children;
    }
}
