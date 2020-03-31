pragma solidity >=0.5.0 <0.7.0;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    uint32 private startTimestamp;
    uint32 private endTimestamp;
    string private label;
    
    event ElectionLaunched(Election election);

    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;

    // voted event
    event votedEvent (
        uint indexed _candidateId
    );

    function Election_ () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
    
    function isActive() public view returns (bool) {
        uint32 currentTime = uint32(now);
        return startTimestamp <= currentTime && endTimestamp > currentTime;
    }
    
     function launch(string calldata _label, uint32 _startTimestamp, uint32 _endTimestamp) external  {
        label = _label;
        startTimestamp = _startTimestamp;
        endTimestamp = _endTimestamp;

        emit ElectionLaunched(this);
    }

    function vote (uint _candidateId) public {
        // require that vote is still active
        require(isActive(), "Election not active anymore");
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount ++;

        // trigger voted event
        emit votedEvent(_candidateId);
    }
    
    
    
    function getStartTimestamp() public view returns (uint32) {
        return startTimestamp;
    }

    function getEndTimestamp() public view returns (uint32) {
        return endTimestamp;
    }
}
