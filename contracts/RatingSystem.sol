// contracts/RatingSystem.sol
pragma solidity ^0.8.0;

contract RatingSystem {
    struct Review {
        uint question1;
        uint question2;
        uint question3;
    }

    mapping(address => Review) public reviews;
    address[] public reviewers;

    function submitReview(uint _question1, uint _question2, uint _question3) public {
        require(_question1 > 0 && _question1 <= 5);
        require(_question2 > 0 && _question2 <= 5);
        require(_question3 > 0 && _question3 <= 5);

        reviews[msg.sender] = Review(_question1, _question2, _question3);
        reviewers.push(msg.sender);
    }

    function getReviewers() public view returns (address[] memory) {
        return reviewers;
    }
}
