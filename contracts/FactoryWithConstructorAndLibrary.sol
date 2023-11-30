// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ChildWithConstructorAndLibrary.sol";

contract FactoryWithConstructorAndLibrary {
    ChildWithConstructorAndLibrary[] public children;

    function createChild(uint _data) public {
        ChildWithConstructorAndLibrary child = new ChildWithConstructorAndLibrary(msg.sender, _data);
        children.push(child);
    }

    function getDeployedChildren() public view returns (ChildWithConstructorAndLibrary[] memory) {
        return children;
    }
}
