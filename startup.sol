// Solidity program
// to store
// Employee Details
pragma solidity ^0.6.12;

// Creating a Smart Contract
contract Startup{

// Structure of employee
struct User{

	// State variables
	int pnum;
	string Teamname;
	string description;
}

User []use;

// Function to add
// employee details
function addIdea(
	int pnum, string memory Teamname,
	string memory description

) public{
	User memory e
		=User(pnum,
				Teamname,
				description);
	use.push(e);
}

// Function to get
// details of employee
function getIdea(
	string memory Teamname
) public view returns(
	int array,
	//string memory,
	string memory){
	uint i;
	for(i=0;i<use.length;i++)
	{
		User memory e
			=use[i];

		// Looks for a matching
		// employee id
		//if(e.Teamname==Teamname)
        if(keccak256(bytes(e.Teamname)) == keccak256(bytes(Teamname)))
		{
				return(
					e.pnum,
					e.description);
		}
	}

	// If provided employee
	// id is not present
	// it returns Not
	// Found
	return(
			0,
			"Not Found");
}
}
