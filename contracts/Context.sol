{\rtf1\ansi\ansicpg1252\cocoartf2577
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 // SPDX-License-Identifier: MIT\
\
pragma solidity >=0.6.0 <0.8.0;\
\
/*\
 * @dev Provides information about the current execution context, including the\
 * sender of the transaction and its data. While these are generally available\
 * via msg.sender and msg.data, they should not be accessed in such a direct\
 * manner, since when dealing with GSN meta-transactions the account sending and\
 * paying for execution may not be the actual sender (as far as an application\
 * is concerned).\
 *\
 * This contract is only required for intermediate, library-like contracts.\
 */\
abstract contract Context \{\
    function _msgSender() internal view virtual returns (address payable) \{\
        return msg.sender;\
    \}\
\
    function _msgData() internal view virtual returns (bytes memory) \{\
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691\
        return msg.data;\
    \}\
\}}