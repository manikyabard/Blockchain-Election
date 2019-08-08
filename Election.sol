pragma solidity 0.4.25;

contract Election {

    enum StateType {Setup, Voting, Result}

    StateType public State;

    // Model a Candidate
    struct Candidate {
        int id;
        string name;
        int voteCount;
    }

    address public ElectionCommission;
    address public Voter;
    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(int => Candidate) public candidates;
    // Store Candidates Count
    int public CandidatesCount;
    string public winner;
    string public cname;
    int public candidateId;
    string public Title;


/*
    // voted event
    event votedEvent (
        uint indexed _candidateId
    );
*/
    constructor (string title) public {
        Title = title;
        CandidatesCount = -1;
        AddCandidate("NOTA");
        State = StateType.Setup;
    }

    function vote (int candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender], "You have already voted before");

        // require a valid candidate
        require(candidateId > 0 && candidateId <= CandidatesCount, "Invalid Candidate");

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[candidateId].voteCount ++;

        // trigger voted event
//        emit votedEvent(_candidateId);
        State = StateType.Voting;
    }

    function AddCandidate (string cname) public {
        CandidatesCount ++;
        candidates[CandidatesCount] = Candidate(CandidatesCount, cname, 0);
    }

    function rescalc () public {
        int mx = 0;
        for (int i = 0; i <= CandidatesCount; i++){
            if (candidates[i].voteCount > mx){
                winner = candidates[i].name;
                mx = candidates[i].voteCount;
            }
        }
        State = StateType.Result;
    }

    function AllowVoting () public {
        State = StateType.Voting;
    }
}