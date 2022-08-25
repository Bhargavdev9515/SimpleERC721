pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC721NFT is ERC721, ERC721Burnable, Ownable {
    constructor() ERC721("ERC721NFT", "NFT") {}

    uint private counter=1;
    function safeMint(address to) public {
        uint tokenId= counter;
        _safeMint(to, tokenId);
        counter++;
    }


}