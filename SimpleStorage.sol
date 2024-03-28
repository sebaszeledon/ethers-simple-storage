//SPDX-License-Identifier: MIT
pragma solidity 0.8.24; //My first comment in solidity

//EVM, Ethereum Virtual Machine
//Avalanche, Fantom, Polygon are compatible

contract SimpleStorage {
    //Types of variables: boolean, uint(always will be positive number), int, address, bytes
    //bool hasFavoriteNumber = true;
    //uint256 favoriteNumber = 5;
    //string favoriteNumberInText = "Five";
    //int256 favoriteInt = -5;
    //address myAddress = 0xd7DC7a9945753C861E7346bfA646483a506a0bf1;
    //bytes32 favoriteBytes = "cat";

    uint256 favoriteNumber;
    //People public person = People({favoriteNumber: 8, name: "Sebastian"});

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    //view, pure don´t modify the state
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    //0xd9145CCE52D386f254917e481eB44e9943F39138
}
