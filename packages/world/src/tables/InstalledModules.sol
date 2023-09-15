// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout, FieldLayoutLib } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("InstalledModules")));
bytes32 constant InstalledModulesTableId = _tableId;

struct InstalledModulesData {
  address moduleAddress;
}

library InstalledModules {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    uint256[] memory _fieldLayout = new uint256[](1);
    _fieldLayout[0] = 20;

    return FieldLayoutLib.encode(_fieldLayout, 0);
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](2);
    _keySchema[0] = SchemaType.BYTES16;
    _keySchema[1] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](1);
    _valueSchema[0] = SchemaType.ADDRESS;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "moduleName";
    keyNames[1] = "argumentsHash";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "moduleAddress";
  }

  /** Register the table with its config */
  function register() internal {
    StoreSwitch.registerTable(
      _tableId,
      getFieldLayout(),
      getKeySchema(),
      getValueSchema(),
      getKeyNames(),
      getFieldNames()
    );
  }

  /** Register the table with its config (using the specified store) */
  function register(IStore _store) internal {
    _store.registerTable(_tableId, getFieldLayout(), getKeySchema(), getValueSchema(), getKeyNames(), getFieldNames());
  }

  /** Get moduleAddress */
  function getModuleAddress(bytes16 moduleName, bytes32 argumentsHash) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0, getFieldLayout());
    return (address(Bytes.slice20(_blob, 0)));
  }

  /** Get moduleAddress (using the specified store) */
  function getModuleAddress(
    IStore _store,
    bytes16 moduleName,
    bytes32 argumentsHash
  ) internal view returns (address moduleAddress) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0, getFieldLayout());
    return (address(Bytes.slice20(_blob, 0)));
  }

  /** Set moduleAddress */
  function setModuleAddress(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), getFieldLayout());
  }

  /** Set moduleAddress (using the specified store) */
  function setModuleAddress(IStore _store, bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((moduleAddress)), getFieldLayout());
  }

  /** Get the full data */
  function get(bytes16 moduleName, bytes32 argumentsHash) internal view returns (InstalledModulesData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getFieldLayout());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(
    IStore _store,
    bytes16 moduleName,
    bytes32 argumentsHash
  ) internal view returns (InstalledModulesData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getFieldLayout());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes memory _data = encode(moduleAddress);

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data, getFieldLayout());
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes16 moduleName, bytes32 argumentsHash, address moduleAddress) internal {
    bytes memory _data = encode(moduleAddress);

    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.setRecord(_tableId, _keyTuple, _data, getFieldLayout());
  }

  /** Set the full data using the data struct */
  function set(bytes16 moduleName, bytes32 argumentsHash, InstalledModulesData memory _table) internal {
    set(moduleName, argumentsHash, _table.moduleAddress);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes16 moduleName, bytes32 argumentsHash, InstalledModulesData memory _table) internal {
    set(_store, moduleName, argumentsHash, _table.moduleAddress);
  }

  /** Decode the tightly packed blob using this table's field layout */
  function decode(bytes memory _blob) internal pure returns (InstalledModulesData memory _table) {
    _table.moduleAddress = (address(Bytes.slice20(_blob, 0)));
  }

  /** Tightly pack full data using this table's field layout */
  function encode(address moduleAddress) internal pure returns (bytes memory) {
    return abi.encodePacked(moduleAddress);
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(bytes16 moduleName, bytes32 argumentsHash) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes16 moduleName, bytes32 argumentsHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    StoreSwitch.deleteRecord(_tableId, _keyTuple, getFieldLayout());
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes16 moduleName, bytes32 argumentsHash) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = bytes32(moduleName);
    _keyTuple[1] = argumentsHash;

    _store.deleteRecord(_tableId, _keyTuple, getFieldLayout());
  }
}
