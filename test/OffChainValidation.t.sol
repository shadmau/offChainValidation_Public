// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import "forge-std/Test.sol";
import "src/OffChainValidation.sol";

contract OffChainValidationTest is Test {


  function setUp() public {
    
    }

    function testIncrement() public {
        
        uint256 salt = 10;
        uint256 contractValue = 1 ether;
        bytes memory byteCodeEmptyContract = hex"60a0604052348015600f57600080fd5b5030608052608051604560296000396000505060456000f3fe608060405236600a57005b600080fdfea26469706673582212207e9ee45cc8fe76554e35cf87e29541a2cc7f29528076a87b18f68e97ffd48b1664736f6c634300080d0033";
        bytes memory callData = hex"";

        vm.prank(0x71660c4005BA85c37ccec55d0C4493E66Fe775d3, 0x71660c4005BA85c37ccec55d0C4493E66Fe775d3);
        new OffChainValidation{value: contractValue}(byteCodeEmptyContract, callData, salt);

    }

}
