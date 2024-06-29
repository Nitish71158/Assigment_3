// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract changePass{
    string public name="Ramlal";
    address public addres=msg.sender;
    uint public number=6532145648;
    string public pass="@12345678";
    uint public age=20;

    function information(uint _age, uint _num) view  public returns(address)
    {
        if(_num!=number)
        {
            revert("Wrong number Enter This is not a User login number");
        }
       assert(_age==age);
       return msg.sender;
    }

    function changes(string memory newPass) external returns(address) {
        pass=newPass;
        require(addres==msg.sender,"This is not a User  Adress You are Unknown");
        return msg.sender;
    }

 
}
