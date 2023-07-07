// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

interface IERC20{
    function transfer(address to , uint256 amount) external view returns (bool);
    function balanceOf(address account) external view returns(uint256);
    event Transfer(address indexed from , address indexed to , uint256 value);



}

contract NoobTokenFaucet{
    address payable owner;
    IERC20 public token;
    uint256 public lockTime = 1 minutes;

    event Deposit(address from , uint256 amount);
    event withdrawl(address indexed to , uint256 indexed amount);
    modifier onlyOwner(){
    require(msg.sender == owner, "only owner can access this" );
    _;
   }

mapping(address => uint256) nextAccessTime;


    uint256 public widthdrawlAmount = 50 * (10 ** 18);

    constructor(address tokenAddress) payable {
        token = IERC20(tokenAddress);
        owner = payable(msg.sender);
        

    }

    function requestTokens() public {
        require(msg.sender != address(0) , "Request must not originate from the zero account");
        require(token.balanceOf(address(this)) >= widthdrawlAmount, "Insufficeient balance in faucet for widhdrawal");
        require(block.timestamp >= nextAccessTime[msg.sender], "try again later");
        nextAccessTime[msg.sender]= block.timestamp + lockTime;
        token.transfer(msg.sender , widthdrawlAmount);

    }

    receive() external payable{
        emit Deposit(msg.sender, msg.value);
    }
    

    function getBalance() external view returns(uint256){
       return  token.balanceOf(address(this));
    }

  function setWidthdrawlAmount( uint256 amount) public onlyOwner{
    widthdrawlAmount = amount * (10 ** 18);
  }

function setLockTime(uint256 amount) public onlyOwner() {
    lockTime = amount * 1 minutes;
    
}


function widthDraw() external onlyOwner{
    token.transfer(msg.sender, token.balanceOf(address(this)));
    emit withdrawl(msg.sender, token.balanceOf(address(this)));
}

   
}