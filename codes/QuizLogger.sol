// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuizLogger {
    uint256 public quizLog;

    event QuizLogged(uint256 log);

    function logQuiz(uint256 log) public {
        quizLog = log;
        emit QuizLogged(log);
    }

    function getLog() public view returns (uint256) {
        return quizLog;
    }
}
