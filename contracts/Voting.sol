pragma solidity ^0.8.0;

contract Voting {
    string public _candidate_1;
    string public _candidate_2;
    
    constructor ( string memory candidate_1_, string memory candidate_2_ ){
        _candidate_1 = candidate_1_;
        _candidate_2 = candidate_2_;
    }
    
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    mapping(uint => Candidate) public candidates;
}



