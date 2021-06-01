pragma solidity ^0.7.0;

import "./ERC20.sol";
import "./SafeMath.sol";

contract ekaCoin is ERC20 {
    using SafeMath for uint256;
    // EKA coin token decimal
    uint8 public constant _decimals = 18;
    // Total supply for the EKA coin = 7.9B
    uint256 private _totalSupply = 7900000000 * (10 ** uint256(_decimals));
    // Eka Token deployer
    address private _ekaDeployer;

    constructor(address _deployer) ERC20("EkaCoin", "EKA", _decimals) {
        _ekaDeployer = _deployer;
        _mint(_ekaDeployer, _totalSupply);
    }

    // Allow to burn own wallet funds (which should be the amount from depositor contract)
    function burnFuel(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}