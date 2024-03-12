*************
We have to deploy 2 contracts first one is Factory.sol
second we have to deploy UniswapV2Router02.sol,
Then deploy our 2 erc20 tokens
from erc20 tokens approve function copy address of contract router.sol and appvove amount to tokens we have to approve to add liquidity,
In router.sol add liquidity,
then swap bown tokens ['address1','address2']
** While deploying factory project we have to add this function-

function pairCodeHash() external pure returns (bytes32) {
return keccak256(type(UniswapV2Pair).creationCode);
}

Then after take paircodeHash from this function and add it to UniswapV2Library.sol In router folder/Library

function pairFor(address factory, address tokenA, address tokenB) internal pure returns (address pair) {
(address token0, address token1) = sortTokens(tokenA, tokenB);
pair = address(uint(keccak256(abi.encodePacked(
hex'ff',
factory,
keccak256(abi.encodePacked(token0, token1)),
hex'072d35f9bc3cb80b818c42783e425d962981fb73e4fadcd876a1febefc7b87b4' // init code hash
))));

*********************************************************************************************************************8




















REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.
