// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ErrHandling {
    
    function assertStatement(uint256 _a, uint256 _b) external pure returns (uint256) {
        uint256 result = _a + _b;
        assert(result > _a); // Ensure addition doesn't overflow
        return result;
    }

    
    function requireStatement(uint256 _a, uint256 _b) external pure returns (uint256) {
        require(_b != 0, "Division by zero is not allowed");
        return _a / _b;
    }

    
    function revertStatement(uint256 _a, uint256 _b) external pure returns (uint256) {
        if (_b == 0) {
            revert("Division by zero is not allowed");
        }
        return _a / _b;
    }
}