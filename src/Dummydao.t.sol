// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Dummydao.sol";

contract DummydaoTest is DSTest {
    Dummydao dummydao;

    function setUp() public {
        dummydao = new Dummydao();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
