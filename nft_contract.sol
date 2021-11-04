pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//import "@openzeppelin/contracts/ownership/Ownable.sol";
contract artwork_nft is ERC721 {
  uint256 public numTokens;

  constructor () ERC721 ("Batman_New_Light", "SuperHero") public{
    numTokens = 0;
  }
  function createNFT() public returns (uint256) {
    uint256 nft_token = numTokens;
    _safeMint(msg.sender, nft_token);
    numTokens = numTokens + 1;
    return nft_token;
  }
  
  
}