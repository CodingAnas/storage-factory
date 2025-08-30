//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{

    uint256 myNumber = 256;

    function storeNumber(uint256 numb) public virtual {
        myNumber = numb;
    }

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public persons;

    function addPerson(string memory _name, uint256 numb) public {
        persons.push( Person({name: _name, favNum: numb}) );
    }

    function retrieve() public view returns(uint256){
        return myNumber;
    }

    mapping(string => uint256) public nameToNumb;

    function addMap(string memory name, uint256 numb) public {
        nameToNumb[name] = numb;
    }
}

