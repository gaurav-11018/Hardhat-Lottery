// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//error Raffle__NotEnoughETHEntered();

contract Raffle {
    uint256 private i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public {
        if (msg.value < i_entranceFee) {
            //           revert Raffle__NotEnoughETHEntered();
        }
    }

    //function pickRandomWinner(){}
    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }
}
