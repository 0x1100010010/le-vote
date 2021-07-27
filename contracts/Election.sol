pragma solidity ^0.8.0;

contract Election {

    constructor () {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
    
    // constructor ( string memory candidate_1_, string memory candidate_2_ ){
    //     addCandidate(candidate_1_);
    //     addCandidate(candidate_2_);
    // }
    
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;
    
    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
    
    function setElections ( string memory candidate_1_, string memory candidate_2_ ) public {
        addCandidate(candidate_1_);
        addCandidate(candidate_2_);
    }
}


