# CHANGE PASSWORD


This Solidity program use to demonstrate about error handling in Solidity while changing the password. The purpose of this program is to use require(), assert(),revert() function.

## Description

In this program, we change the password of a user and check for errors using the require(), assert(), and revert() functions. The contract is named ChangePass, and it includes the user's name, old password, user address, and number. We then create a function named information in which we check the user's age to verify whether it is the user or someone else. This function returns the address of the person. Next, we create another function named change that changes the password from the old one to a new one. If the user does not perform this operation correctly, the password will not be changed, and the address of the person attempting to change the password will be returned.

## Getting Started

### Executing Program 
* To run this program, you can use Remix, an online Solidity IDE. And run the code.

* Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with anyname.sol extension (e.g., changePass.sol). Copy and paste the following code into the file:

```javascript

pragma solidity ^0.8.18;  //Pragma is compiler directive that allows additional information to compiler pragma solidity

contract changePass{
    string public name="Ramlal";            //user name
    address public addres=msg.sender;      //user address
    uint public number=6532145648;        //user number
    string public pass="@12345678";      //user password
    uint public age=20;                 //user age

    function information(uint _age, uint _num) view  public returns(address)
    {
        if(_num!=number)             // check wether number is written wrong or write
        {
            revert("Wrong number Enter This is not a User login number");  // if not correct return error
        }
       assert(_age==age);       // checking age 
       return msg.sender;      // return the person address
    }
    function changes(string memory newPass) external returns(address) {     // another function for change password
        pass=newPass;                                                      // new password generate
        require(addres==msg.sender,"This is not a User  Adress You are Unknown"); // check wether owner is changing address or some one else
        return msg.sender;                                                       // return address
    }
}
```

* To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar or you can press (ctrl+S) buttom. Make sure the "Compiler" option is set to "0.8.18" or greater than "0.8.18", and then click on the "Compile changePass.sol" button.

* Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "changePass" contract from the dropdown menu, and then click on the "Deploy" button.

* Once the contract is deployed, then you fill the information under information function on left hand side then click on call you function will called.And to check the address , name , number, pass,or age click on name, age , number, pass button. Then go in changePass function onleft hand side which is in 'orange' in color then change your password if address match with user and click on call button to change password.

## HELP

* address should be same to change the passworda

## Author
Nitish Kumar Singh
[@Nitish71158](https://github.com/)
