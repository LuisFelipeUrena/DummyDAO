//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract GovernanceToken is ERC20Votes {
    //here we determine total supply name and symbol, 
    //you can rename it to anything you want
    uint256 public s_maxSupply = 300000e18; //this is in scientific notation since solidity supports it, it means 30k
    string public GovTokenName = 'VoteToken';
    string public GovTokenSymbol = 'VTS';

    constructor()
        ERC20(GovTokenName,GovTokenSymbol);
        ERC20Permit(GovTokenName)
        {
            _mint(msg.sender, s_maxSupply);
        }

    // all of the functions below here are overrides that have to be made
    // since solidity requires it
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Votes){
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(
        address to,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(
        address account,
        uint256 amount
    ) internal override(ERC20Votes) {
        super._burn(account, amount);
    }


}