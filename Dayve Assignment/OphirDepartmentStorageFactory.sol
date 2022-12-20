// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./OphirDepartmentalContract.sol";

contract StorageFactory {
    /**
        @dev Array to store departments of type Departments,
        Departments is a contract in OphirDepartmentalContract. 
     */
    Departments[] public departmentArray;

    /**
        @dev Creates an instance of Departments and store in an array 
     */
    function createdepartmentstorage() public {
        Departments departmentStorage = new Departments();
        departmentArray.push(departmentStorage);
    }

    /**
     * @dev store number of worker in departments at specific index
     * @param _workersIndex: index of department.
     * @param _noofworkers: number of workers
     *
     **/
    function storeWorkers(uint256 _workersIndex, uint256 _noofworkers) public {
        Departments departmentStorage = departmentArray[_workersIndex];
        departmentStorage.storenoofworkers(_noofworkers);
    }

    /**
     * @dev returns number of workers at specified department index.
     * @param _workersIndex: index of department.
     *
     **/
    function getWorkers(uint256 _workersIndex) public view returns (uint256) {
        Departments departmentStorage = departmentArray[_workersIndex];
        return departmentStorage.getStoredWorkers();
    }
}
