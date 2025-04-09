// License

// SPDX-License-Identifier: LGPL-3.0-only

// Version

pragma solidity 0.8.24;

// Contract 

contract donation{

    // Variables

    string public leader;
    string public reason;
    address public leaderAddress;
    string[] public donor;
    uint256[] public donorAmount;
    uint private i = 0; 
    uint private k = 0;
    uint256 public amountCollected;
    bool private finalized = false;


    // Events

    event donateEvent (string donor, uint256 donorAmount);
    event endCampaignEvent(string acknowledgments_, uint256 amountCollected);

    // Constructor

    constructor (string memory leader_, string memory reason_){

        leader = leader_;
        reason = reason_;
        leaderAddress = msg.sender;

    }

    // Functions

    function donate (string memory donor_) external payable {
      
      require(msg.value > 0, "Enter a valid amount");
      require(finalized == false, "This donation campaign has ended");
      donor.push(donor_); 
      i = i + 1;
      donorAmount.push(msg.value);
      amountCollected = amountCollected + donorAmount[k];
      k = k + 1; 
      emit donateEvent(donor_, msg.value);

    }

    function endCampaign (string memory acknowledgments_) public returns(string memory acknowledgments ){
        
        require(msg.sender == leaderAddress, "You are not the leader of this campaign");
        (bool success,) = msg.sender.call{value: amountCollected}("");
        require (success, "Your campaign assets could not be withdrawn or have already been withdrawn.");
        acknowledgments = acknowledgments_;
        finalized = true;
        emit endCampaignEvent(acknowledgments_, amountCollected);
        return acknowledgments;

    }
}
