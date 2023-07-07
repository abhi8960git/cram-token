
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";


contract NoobToken is ERC20Capped {
    address payable public owner;

    uint256 public blockReward;


 constructor(uint256 cap, uint256 reward) ERC20("NoobToken", "CX") ERC20Capped(cap * (10 ** decimals()) ){
        owner = payable(msg.sender);
        _mint(owner, 70000000 * (10 ** decimals()) );
        blockReward = reward * (10 ** decimals()) ;
    }

   modifier onlyOwner{
    require(msg.sender == owner , "Only owner can change the reward ");
    _;
}

function _mintMinerReward() internal{
    _mint(block.coinbase , blockReward); 
}

function _beforeTokenTransfer(address from ,  address to,  uint256 amount) internal virtual override{
    if(from != address(0) && to != block.coinbase && block.coinbase != address(0)){
        _mintMinerReward();
    }
    super._beforeTokenTransfer(from , to , amount);
}


 function setBlockReward(uint256 reward) public onlyOwner {

        blockReward = reward * (10 ** decimals());

    }
// function destroy() public onlyOwner{
//     selfdestruct(owner);
// }
    

}


