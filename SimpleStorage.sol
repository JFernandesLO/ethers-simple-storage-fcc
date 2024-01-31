// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    // boolean, uint, int, address, bytes
    // bool hasFavoriteNumber = true;
    uint256 public favoriteNumber;
    // string favoriteNumberInText = "Five";
    // int256 favoriteInteger = -1;
    // address myAdress = 0x96A63322EC0a78Ac1d02eFED9aDf4703f689Ec66;
    // bytes32 favoriteBytes = "cat";

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    //uint256 public favoritesNumberList;
    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        //People memory newPerson = People(_favoriteNumber, _name);
        //people.push(newPerson);
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
