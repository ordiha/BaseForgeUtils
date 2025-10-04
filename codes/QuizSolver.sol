// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuizSolver {
    uint256 public solution;

    event SolutionSet(uint256 solution);

    function setSolution(uint256 sol) public {
        solution = sol;
        emit SolutionSet(sol);
    }

    function getSolution() public view returns (uint256) {
        return solution;
    }
}
