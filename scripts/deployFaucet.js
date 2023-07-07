const hre = require("hardhat");

async function main(){
  const etherStake = await hre.ethers.deployContract("NoobTokenFaucet",["0x5FbDB2315678afecb367f032d93F642f64180aa3"]);
  await etherStake.waitForDeployment();
  console.log("deployed succesfully", etherStake.target);
}


main().catch((error)=>{
  console.log(error);
  process.exitCode = 1;
})