// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

contract Departments {
    Department[] public departments;

    struct Department {
        string departmentName;
        uint256 noofworkers;
    }

    uint256 noofworkers;

    /**
        @dev a mapping between department names and number of workers
     */
    mapping(string => uint256) public deptNameToWorkers;

    /**
     * @dev stores total number of workers
     * @param _noofworkers: number of workers
     *
     **/
    function storenoofworkers(uint256 _noofworkers) public {
        noofworkers = _noofworkers;
    }

    /**
     * @dev Returns number of workers
     *
     **/
    function getStoredWorkers() public view returns (uint256) {
        return noofworkers;
    }

    /**
     * @dev store departments with names and number of workers
     *
     * This function stores various departments with their respective names and
     * total number of workers
     *
     * @param _departmentName: Name of department
     * @param _noofworkers: total number of workers in the department given the name
     *
     **/
    function storeDepartments(
        string memory _departmentName,
        uint256 _noofworkers
    ) public {
        departments.push(
            Department({
                departmentName: _departmentName,
                noofworkers: _noofworkers
            })
        );
        deptNameToWorkers[_departmentName] = _noofworkers;
    }
}
