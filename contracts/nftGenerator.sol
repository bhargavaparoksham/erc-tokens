
pragma solidity ^0.8.0;

// SPDX-License-Identifier: GPL-3.0-or-later

import "./subcontracts/ERC721.sol";


contract nftGenerator is ERC721URIStorage {

    address public Admin;
    uint256 public tokenCounter;

    constructor() public ERC721 ("NFT Generator","NFTGen") {
        Admin = msg.sender;     
        tokenCounter = 0;
    }

    function mintNFT(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }

}







