Certainly! Here's the README file template with all the content placed inside a code block:

```
```
# ERC20 Token Project

This is a simple ERC20 token project built using Solidity, Hardhat, Remix, and MetaMask. The project includes a smart contract for the ERC20 token and a faucet that allows users to request tokens. This README provides an overview of the project and instructions for getting started.

## Getting Started

To get started with this project, follow the steps below:

### Prerequisites

- Node.js (v12 or higher)
- Hardhat (v2.5.0 or higher)
- Remix IDE (Web-based Solidity IDE)
- MetaMask (Browser extension wallet)

### Installation

1. Clone the repository:

```shell
git clone https://github.com/abhi8960git/cram-token
```

2. Install the project dependencies:

```shell
cd cram-token
npm install
```

### Testing

To run the tests for the ERC20 token and faucet, use the following command:

```shell
npx hardhat test
```

The test suite includes various scenarios to ensure the correct behavior of the token and faucet contracts.

### Deployment

To deploy the ERC20 token and faucet contracts to the Shephlia Testnet, follow these steps:

1. Open Remix IDE in your browser.

2. Import the `Token.sol` and `Faucet.sol` files.

3. Compile the contracts using the Solidity compiler.

4. Connect Remix to MetaMask by selecting the MetaMask environment and switching to the Shephlia Testnet.

5. Deploy the token contract, providing the necessary constructor arguments such as token name, symbol, and initial supply.

6. Deploy the faucet contract, passing the token contract address as a constructor argument.

7. After deployment, interact with the faucet contract in Remix to request tokens from the faucet.

### Interacting with the Faucet

To interact with the faucet contract and request tokens, follow these steps:

1. Ensure that MetaMask is connected to the Shephlia Testnet and you have some testnet Ether for gas fees.

2. Open Remix IDE and select the deployed faucet contract from the contract dropdown.

3. Use the `requestTokens()` function to request tokens from the faucet. Make sure to provide the address where you want the tokens to be sent.

4. Confirm the transaction in MetaMask and wait for the transaction to be mined.

5. Check your MetaMask wallet to verify that the requested tokens have been received.

## Known Issues

- If tokens are not showing up in MetaMask after requesting from the faucet, refer to the troubleshooting section in the README.

## Troubleshooting

If you encounter any issues during setup or usage of the ERC20 token project, consider the following troubleshooting steps:

1. Make sure you are connected to the Shephlia Testnet in both Remix and MetaMask.

2. Verify that the faucet contract is interacting correctly with the ERC20 token contract. Check the contract addresses and function calls.

3. Ensure that you have sufficient testnet Ether in MetaMask to cover the gas fees for transactions.

4. If you encounter any error messages, refer to the error details and stack traces to identify the cause of the issue.

5. Feel free to consult the project's documentation or seek support from the developer community if needed.

