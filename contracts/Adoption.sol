pragma solidity >=0.4.21 <0.7.0;

contract Adoption {
  address[16] public adopters; 
  uint public last_completed_migration;

// Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}

  function getAdopters() view public returns ( address[16] memory ) {
  	return adopters;
  }




}
