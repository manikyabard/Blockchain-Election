# Blockchain-Election

## Idea
### To create a Decentralized Voting Platform using Azure Blockchain.
### Key Features:
    Allow Voters to vote securely from any poll booth nearby irrespective of where they are registered from.
    
    Enable the voters to ensure that their vote was placed by giving a proper transaction id and promoting transparency.
    
    Ensuring that vote tampering is not possible by having multiple blocks where data is kept securely on the blockchain.

## Working Process
### Roles
    Voter - Can vote for their favourite candidate
    Election Comission - Can initialize the Election Process
### Rules
    The election process can be initiated by the Election Commision only.
    
    The voters can vote for their favourite candidate after going through an identification process at the poll booth to ensure that no one else can vote for another and selling of votes is not possible.

    A person can only vote once and only for themselves.

    At the end of the voting event, the result will be declared.

### The link for the demo video:
    https://youtu.be/Fsp_8WQU3fo
    
### Check the documentation for the project:
    https://github.com/manikyabard/Blockchain-Election/blob/master/Blockchain_Election.pdf
    
### Files present in this repo
    [Election.json](https://github.com/manikyabard/Blockchain-Election/blob/master/Election.json) - configuration file for workbench application
    [Election.sol](https://github.com/manikyabard/Blockchain-Election/blob/master/Election.sol) - solidity file for workbench application
    [Logic_app_code.json](https://github.com/manikyabard/Blockchain-Election/blob/master/logic_app_code.json) - code for Azure logic app
    [Blockchain_Election.pdf](https://github.com/manikyabard/Blockchain-Election/blob/master/Blockchain_Election.pdf) - Documentation for the Project
    [People.ipynb](https://github.com/manikyabard/Blockchain-Election/blob/master/People.ipynb) - python script for filtering out the new voters to be added to Azure AD
    [People.csv](https://github.com/manikyabard/Blockchain-Election/blob/master/People.csv) - sample csv file containing data about all people
    [People_18.csv](https://github.com/manikyabard/Blockchain-Election/blob/master/People_18.csv) - filtered out csv created by the python script
    
    
    

