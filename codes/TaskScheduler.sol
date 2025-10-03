// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TaskScheduler {
    uint256 public taskId;
    mapping(uint256 => uint256) public taskTimes;

    event TaskScheduled(uint256 id, uint256 time);

    function scheduleTask(uint256 time) public {
        taskId++;
        taskTimes[taskId] = time;
        emit TaskScheduled(taskId, time);
    }

    function getTaskTime(uint256 id) public view returns (uint256) {
        return taskTimes[id];
    }
}
