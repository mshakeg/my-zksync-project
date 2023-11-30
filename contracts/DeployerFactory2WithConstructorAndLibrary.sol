// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ChildDeployer.sol";

contract DeployerFactory2WithConstructorAndLibrary {
    ChildWithConstructorAndLibrary[] public children;

    function createChild(uint _data) public {
        ChildWithConstructorAndLibrary child = ChildDeployer.createChildWithConstructorAndLibrary(_data);
        children.push(child);
    }

    function getDeployedChildren() public view returns (ChildWithConstructorAndLibrary[] memory) {
        return children;
    }

    // Helper function to compute the address of the contract that would be created with given constructor parameters
    function computeAddress(address _creator, uint _data) public view returns (address) {
        bytes32 salt = keccak256(abi.encodePacked(_creator, _data));
        bytes memory bytecode = abi.encodePacked(type(ChildWithConstructorAndLibrary).creationCode, abi.encode(_creator, _data));
        return address(uint160(uint(keccak256(abi.encodePacked(
            bytes1(0xff),
            address(this),
            salt,
            keccak256(bytecode)
        )))));
    }
}
