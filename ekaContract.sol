{\rtf1\ansi\ansicpg1252\cocoartf2577
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.7.0;\
\
import "./ERC20.sol";\
import "./SafeMath.sol";\
\
contract ekaCoin is ERC20 \{\
    using SafeMath for uint256;\
    // EKA coin token decimal\
    uint8 public constant _decimals = 18;\
    // Total supply for the EKA coin = 7.9B\
    uint256 private _totalSupply = 7900000000;\
    // Eka Token deployer\
    address private _ekaDeployer;\
\
    constructor(address _deployer) ERC20("EkaCoin", "EKS", _decimals) \{\
        _ekaDeployer = _deployer;\
        _mint(_ekaDeployer, _totalSupply);\
    \}\
\
    // Allow to burn own wallet funds (which should be the amount from depositor contract)\
    function burnFuel(uint256 amount) public \{\
        _burn(msg.sender, amount);\
    \}\
\}}