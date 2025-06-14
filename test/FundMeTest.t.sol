//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {Test,console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundeMe.sol";
contract FundMeTest is Test {
    uint256 number = 20;
    FundMe fundMe;
    function setUp() external {
        fundMe = new FundMe();
    }
    function testDemo() external{
        assertEq(fundMe.MINIMUM_USD(), 5e18);

    }
    function testOwner() public{
        console.log("Owner: ", fundMe.i_owner());
        console.log("sender:", msg.sender);
        assertEq(fundMe.i_owner(), address(this), "Owner is not the sender");
    }
    function isPriceETHVersionIsAccurate () public{
        uint256 version = fundMe.getVersion();
        assertEq(version, 4, "Version is not 4");
    }
}