// for evm-puzzle 7

/**
 * (0xA8  <<  0xF8) -> 0xa800000000000000000000000000000000000000000000000000000000000000
 * So, the first byte of the hashing result needs to be 0xa8
 * Try to find this x
 *
 * keccak256(x)
 * x = ?
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculate {
    // i can be 47 to let the hash starts with 0xA8
    function find() external pure returns (uint256 i) {
        uint256 hash;
        uint8 firstByte;

        while (true) {
            hash = uint256(keccak256(abi.encode(i)));
            firstByte = uint8(hash >> 0xF8);

            if (firstByte == 0xA8) {
                break;
            }

            i++;
        }
    }
}
