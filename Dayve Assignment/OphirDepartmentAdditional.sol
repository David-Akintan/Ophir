// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./OphirDepartmentalContract.sol";

contract AdditionalWorkers is Departments {
    // override: function the function
    // virtual & override

    function storenoofworkers(uint256 _noofworkers) public override {
        noofworkers = _noofworkers + 139;
    }
}
