// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Interview {
  uint256 count = 0;
  mapping(uint256 => address) idToAddress;

  /**
   *@dev create demo data
   */
  constructor() {
    for (uint256 index = 0; index < 33; index++) {
      createNewAccount(
        address(
          uint160(
            uint256(keccak256(abi.encodePacked(count, blockhash(block.number))))
          )
        )
      );
    }
  }

  function createNewAccount(address newAccount) public {
    idToAddress[count] = newAccount;
    count++;
  }

  // ███████╗████████╗ █████╗ ██████╗ ████████╗    ██╗  ██╗███████╗██████╗ ███████╗
  // ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝    ██║  ██║██╔════╝██╔══██╗██╔════╝
  // ███████╗   ██║   ███████║██████╔╝   ██║       ███████║█████╗  ██████╔╝█████╗
  // ╚════██║   ██║   ██╔══██║██╔══██╗   ██║       ██╔══██║██╔══╝  ██╔══██╗██╔══╝
  // ███████║   ██║   ██║  ██║██║  ██║   ██║       ██║  ██║███████╗██║  ██║███████╗
  // ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝       ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝

  /**
   * TEST 1
   * @param arr array address 
   * @param index index of element
   * TEST CASE 1: $arr=add1,add2,add3,add4,$index=1 return array [add1,add4,add3]
   */
  function removeElementIgnoreSort(address[] memory arr, uint256 index)
    public
    view
    returns (address[] memory results)
  {}

  /**
   * TEST 2
   * @param arr array address 
   * @param index index of element
   * TEST CASE 1: $arr=add1,add2,add3,add4,$index=1 return array [add1,add3,add4]
   */
  function removeElementWithSort(address[] memory arr, uint256 index)
    public
    view
    returns (address[] memory results)
  {}


  /**
   * TEST 3
   * @param limit total number of records returned
   * @param offset number of records ignored
   * TEST CASE 1: $limit=6, $offset=20 return array with 6 elements [add1,add2,...,add33]=>[add21=>add26]
   * TEST CASE 2: $limit=10, $offset=30 return array with 3 elements  [add1,add2,...,add33]=>[add31=>add33]
   */
  function getPagination(uint256 limit, uint256 offset)
    public
    view
    returns (address[] memory results)
  {}
}
