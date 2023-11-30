// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.4;

import { ChildWithConstructorAndLibrary } from "./ChildWithConstructorAndLibrary.sol";

library ChildDeployer {
    function createChildWithConstructorAndLibrary(
        uint256 data
    ) public returns (ChildWithConstructorAndLibrary childWithConstructorAndLibrary) {
        childWithConstructorAndLibrary =
            new ChildWithConstructorAndLibrary{ salt: keccak256(abi.encodePacked(msg.sender, data)) }(
                msg.sender,
                data
            );
    }
}
