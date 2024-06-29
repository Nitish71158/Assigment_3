AIM: Do Error Handling By Using require(), assert(), revert().

Discription: In this program we change password of a user and check the error by using require(), assert(),revert() function. In this we make contract name as changePass in which we have user name, Old password ,
address of user and number , and then create a function name as information in which we check user number age becouse to check wether it is user or some one else and then return address of persion, then we 
create another function name as change and in this we change the pass old to new one and if the user will not done it it will not change password and return address who try to change password.

Getting Started

Executing Program To run this program, you can use Remix, an online Solidity IDE. And run the code.

//Pragma is compiler directive that allows additional information to compiler pragma solidity ^0.8.18;

contract changePass{
    string public name="Ramlal"; // name of user
    address public addres=msg.sender; // store address of user
    uint public number=6532145648; // number of user
    string public pass="@12345678"; //  old password
    uint public age=20; // age of user

    function information(uint _age, uint _num) view  public returns(address)
    {
        if(_num!=number) // check wether number is written wrong or write
        {
            revert("Wrong number Enter This is not a User login number");// if not correct return error
        }
       assert(_age==age);// checking age 
       return msg.sender; // return the person address
    }

    function changes(string memory newPass) external returns(address) { // another function for change password
        pass=newPass; // new password generate
        require(addres==msg.sender,"This is not a User  Adress You are Unknown"); // check wether owner is changing address or some one else
        return msg.sender; // return address
    }

 
}

Authors Nitish Kumar Singh nitishsingh71158@gmail.com
