// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Greeter {
    // Internal state to the contract
    string private greeting;
    string private meeting;

    // Constructor - run when contract is deployed
    constructor(string memory _greeting, string memory _meeting) {
        greeting = _greeting;
        meeting = _meeting;
    }

    // Read function (can be called without a transaction)
    function greet() public view returns (string memory) {
        return greeting;
    }

    // Read function (can be called without a transaction)
    function meet() public view returns (string memory) {
        return meeting;
    }

    // Write function (requires a transaction to be called)
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;

        emit GreetingChanged(_greeting);
    }

    // Write function (requires a transaction to be called)
    function setMeeting(string memory meeting) public {
        meeting = _meeting;

        emit GreetingChanged(_meeting);
    }

    event GreetingChanged(string newGreeting);
}
