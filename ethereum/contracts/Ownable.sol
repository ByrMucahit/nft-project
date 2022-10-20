pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/*  We need to the ERC-721 contract as it is the 'base' of our smart Contract. 
    It has already implemented all the methods specified in EIP-721 */


contract EmotionalShapes is ERC721 {
    // Counter is useful to generate incremental ids for our NFTs.
    using Counters for Counters.counter;
    // We named the variable _tokenIdCounter
    Counters.Counter private _tokenIdCounter;

    // We initialized our ERC721 with its name and symbol.
    constructor () ERC721("EmotionalShapes", "ESS") {}

    // We override the default _baseURI function by returning our own.
    function _baseURI () internal pure override returns (string memory) {
        return "YOUR_API_URL/api/erc721/";
    }

    // It is the function that lets you publish an instance of this Smart Contract on the block chain
    function mint(address to)  public returns (uint256) {
        require(_tokenIdCounter.current() < 3);
        _tokenIdCounter.increment();
        // Publish to token
        _safeMint(to, _tokenIdCounter.current());

        return _tokenIdCounter.current();
    }
    

}