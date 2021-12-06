pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string description;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    function addTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    constructor() public {
        addTask("First task");
    }
}
