pragma solidity ^0.8.17;

contract Startup{

struct User{

	int pnum;
	string Teamname;
	string description;
}

User []use;


function addIdea(int pnum, string memory Teamname,string memory description) public {
	User memory e = User(pnum,Teamname,description);
	use.push(e);
}

function getIdea(string memory Teamname) public view returns(int array,string memory) {
	uint i;
	for(i=0;i<use.length;i++)
	{
		User memory e = use[i];
		if(keccak256(bytes(e.Teamname)) == keccak256(bytes(Teamname)))
		{
			return(e.pnum,e.description);
		}
	}
	return(0,"Not Found");
}
}
