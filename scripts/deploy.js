const hre = require("hardhat");

async function main(){
  const etherStake = await hre.ethers.deployContract("NoobToken" ,[100000000, 50]);
  await etherStake.waitForDeployment();
  console.log("deployed succesfully to", etherStake.target);
}


main().catch((error)=>{
  console.log(error);
  process.exitCode = 1;
})