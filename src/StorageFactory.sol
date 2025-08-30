//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorage;

    function createSimpleStorage() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorage.push(newSimpleStorage);
    }

    function specStore(uint256 index, uint256 numb) public {
        listOfSimpleStorage[index].storeNumber(numb);
    }

    function specRetrieve(uint256 index) public view returns(uint256){
        return listOfSimpleStorage[index].retrieve();
    }
}