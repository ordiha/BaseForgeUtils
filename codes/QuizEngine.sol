// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QuizEngine {
    uint256 public questionId;
    mapping(uint256 => bool) public answers;

    event QuestionAnswered(uint256 id, bool correct);

    function answerQuestion(bool answer) public {
        questionId++;
        answers[questionId] = answer;
        emit QuestionAnswered(questionId, answer);
    }

    function getAnswer(uint256 id) public view returns (bool) {
        return answers[id];
    }
}
