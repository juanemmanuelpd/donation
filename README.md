# Donation

## Overview  🪙

Run simple and transparent donation campaigns through the blockchain.

## Features 📃

* Simple - Enter a brief information and your donation campaign will be ready.
* Transparent - You have the support of the blockchain to ensure that all donation transactions are valid.
* Flexible - End the donation campaign when necessary and you will have access to the collected assets immediately.

## Technical details ⚙️

* Integrated Development Environment - Remix (Ethereum IDE)
* Solidity Compiler Version - 0.8.24

## Deploying the contract 🛠️

1. Open Remix IDE. Available at https://remix.ethereum.org
2. Go to the "File explorer" tab and create a new file with the .sol extension in the "Contracts" folder
3. Copy the donation.sol code and paste it into the .sol file you created
4. Go to the "Solidity compiler" tab and select version 0.8.24
5. Compile the code by pressing CTRL + S if you are on Windows, or COMMAND + S if you are on Mac OS
6. If you find no errors, go to the "Deploy and Execute Transactions" tab and select your "Environment" and "Account."
7. Go to the deploy section and enter your name in the "LEADER" box and enter the reason for your donation campaign in the "REASON" box.
8. Finally click on "Transact" to start your donation campaign.

## Code details 💻

*  function donate() - To run this function, the following is required:

  ** The amount to be donated must be greater than 0 WEI -> require(msg.value > 0, "Enter a valid amount");
  ** The donation campaign must not have ended -> require(finalized == false, "This donation campaign has ended");

This function records the donor's name and the amount of WEI donated in arrays. These arrays can be queried by anyone to verify this data.

*
