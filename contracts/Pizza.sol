pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/ECRecovery.sol";

contract Pizza {
    
    using ECRecovery for bytes32;

    event DataSigned(bytes32 _theData);
    event PizzaBought(uint256 _noOfPizzas, uint256 _wei);
    
    //Our fallback function will be payable so that we can send ETH to the contract
    function sendEth() public payable {
        
    }
    
    function orderPizza(
        bytes _signature, 
        address _friend,
        uint256 _noOfPizzas, 
        uint256 _amount)
        public 
    {
        require(_friend != msg.sender);
        require(_amount <= this.balance);
        //Convert to a signed message in Ethereum
        bytes32 temp = keccak256(_noOfPizzas,_amount);
        bytes32 _hash = temp.toEthSignedMessageHash();
        require(_friend == _hash.recover(_signature));
        msg.sender.transfer(_amount);
        emit PizzaBought(_noOfPizzas, _amount);
    }
        
    function toHash(uint256 _noOfPizzas, uint256 _amount) 
        public
        view
        returns (bytes32)
    {
        emit DataSigned(keccak256(_noOfPizzas, _amount));
        return keccak256(_noOfPizzas, _amount);      
    }
    
}