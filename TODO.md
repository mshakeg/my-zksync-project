## zkSync contract verification

### Factory - Complexity 1

Factory: 0xf1200ca8DC814c6716822601b8E1c7783270E769
Child: 0xf0A3b3cb697f284Db6dA2FE1F9f70c60796d3e7D

yarn hardhat verify 0xf0A3b3cb697f284Db6dA2FE1F9f70c60796d3e7D --contract contracts/Child.sol:Child

### Factory - Complexity 2

FactoryWithConstructor: 0xd1d0Da9494aF004f685490C8CbcC723d97A40729
ChildWithConstructor: 0x25f4DBEe949096e1Eb095B2Bbc395644D2c10bfc

yarn hardhat verify 0x25f4DBEe949096e1Eb095B2Bbc395644D2c10bfc --contract contracts/ChildWithConstructor.sol:ChildWithConstructor --constructor-args arguments.js

### Factory - Complexity 3

FactoryWithConstructorAndLibrary: 0xeb54226A25f98C28Eac11C21bA6db881Bc7a1FDa
ChildWithConstructorAndLibrary: 0x05691cEfB29baA453E7785E094f1B180EC67dD63

yarn hardhat verify 0x05691cEfB29baA453E7785E094f1B180EC67dD63 --contract contracts/ChildWithConstructorAndLibrary.sol:ChildWithConstructorAndLibrary --constructor-args arguments.js

### Factory - Complexity 4

Factory2WithConstructorAndLibrary: 0x59c0f87890A06D2ebbc140958a280414C8a8Bf2b
ChildWithConstructorAndLibrary: 0x40F91B48Ef250605Cb8425Bb1fc5F66f86dbd58c

yarn hardhat verify 0x40F91B48Ef250605Cb8425Bb1fc5F66f86dbd58c --contract contracts/ChildWithConstructorAndLibrary.sol:ChildWithConstructorAndLibrary --constructor-args arguments.js

### Factory - Complexity 5

DeployerFactory2WithConstructorAndLibrary: 0xb4259B2DA6bB344DE27AA822f85445EB83ECAbCD
ChildWithConstructorAndLibrary: 0xeD73f399B8e34028bFb2B5d6E0dFef2dcBf1b7F3

**PROBLEMATIC CONTRACT VERIFICATION:**

yarn hardhat verify 0xeD73f399B8e34028bFb2B5d6E0dFef2dcBf1b7F3 --contract contracts/ChildWithConstructorAndLibrary.sol:ChildWithConstructorAndLibrary --constructor-args arguments.js
