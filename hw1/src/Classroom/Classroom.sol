// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool private _isFirst = true;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (_isFirst) {
            _isFirst = false;
            return 10001;
        }
        else {
            return 123;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 classroomV2 = IClassroomV2(msg.sender);
        bool _isFirst = !classroomV2.isEnrolled();
        if (_isFirst) {
            return 10001;
        }
        else {
            return 123;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (gasleft() > 7000) {
            return 10001;
        }
        else {
            return 123;
        }
    }
}
