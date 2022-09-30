pragma solidity ^0.8.10;

contract emptyContract {

    address immutable OWN_ADDRESS;

    constructor() {
        OWN_ADDRESS = address(this);
    }

    receive() payable external {}
}