//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;
contract Mappings{
    
   mapping(address=>bool) public isRegister;
   mapping(address=>uint) public id;

   function register(uint _id) public{
       require(!isRegister[msg.sender],"Kayit zaten bulunmakta");
       isRegister[msg.sender] = true;
       id[msg.sender]= _id;
   }

   function delRegister() public{
       require(isRegister[msg.sender],"Kayit bulunmamakta");
       delete(isRegister[msg.sender]);
       delete(id[msg.sender]);
   }
}