// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract OffChainValidation {

    constructor(bytes memory bytecode, bytes memory callData, uint256 _salt) payable {
    address addr;
    assembly {
      addr := create2(0, add(bytecode, 0x20), mload(bytecode), _salt)
      if iszero(extcodesize(addr)) {
        revert(0, 0)
      }
    }


    (bool success, bytes memory retMsg) =  addr.call{value: msg.value}("");
    require(success, string(retMsg));

    (success, retMsg) = addr.call(callData);
    require(success, string(retMsg));
    }

 
}
