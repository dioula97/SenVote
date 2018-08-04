pragma solidity ^0.4.18;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Voting.sol";

contract TestVoting {
	Voting voting = Voting(DeployedAddresses.Voting());
	
    }

}

