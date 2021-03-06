pragma solidity ^0.4.15;

contract Proxy {

    function proxy(address destination, bytes data) external {
        require(
            destination.call.gas(msg.gas).value(msg.value)(data)
        );
    }

}
