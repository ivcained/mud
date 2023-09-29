// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

/* Autogenerated file. Do not edit manually. */

import { SystemCallData, SystemCallFromData } from "./../../modules/core/types.sol";

/**
 * @title IBatchCallSystem
 * @notice This is an autogenerated interface that represents a MUD system.
 * @dev Users of this system are advised not to manually edit this file.
 */
interface IBatchCallSystem {
  /**
   * @notice batchCall
   * @dev External contracts or callers can use this function to increment a value in the system.
   * Implementing contracts should ensure the integrity and logic of this function.
   */
  function batchCall(SystemCallData[] calldata systemCalls) external returns (bytes[] memory returnDatas);

  /**
   * @notice batchCallFrom
   * @dev External contracts or callers can use this function to increment a value in the system.
   * Implementing contracts should ensure the integrity and logic of this function.
   */
  function batchCallFrom(SystemCallFromData[] calldata systemCalls) external returns (bytes[] memory returnDatas);
}
