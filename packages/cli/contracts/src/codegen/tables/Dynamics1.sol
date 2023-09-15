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

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("Dynamics1")));
bytes32 constant Dynamics1TableId = _tableId;

struct Dynamics1Data {
  bytes32[1] staticB32;
  int32[2] staticI32;
  uint128[3] staticU128;
  address[4] staticAddrs;
  bool[5] staticBools;
}

library Dynamics1 {
  /** Get the table values' field layout */
  function getFieldLayout() internal pure returns (FieldLayout) {
    uint256[] memory _fieldLayout = new uint256[](0);

    return FieldLayoutLib.encode(_fieldLayout, 5);
  }

  /** Get the table's key schema */
  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _keySchema = new SchemaType[](1);
    _keySchema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_keySchema);
  }

  /** Get the table's value schema */
  function getValueSchema() internal pure returns (Schema) {
    SchemaType[] memory _valueSchema = new SchemaType[](5);
    _valueSchema[0] = SchemaType.BYTES32_ARRAY;
    _valueSchema[1] = SchemaType.INT32_ARRAY;
    _valueSchema[2] = SchemaType.UINT128_ARRAY;
    _valueSchema[3] = SchemaType.ADDRESS_ARRAY;
    _valueSchema[4] = SchemaType.BOOL_ARRAY;

    return SchemaLib.encode(_valueSchema);
  }

  /** Get the table's key names */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](1);
    keyNames[0] = "key";
  }

  /** Get the table's field names */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](5);
    fieldNames[0] = "staticB32";
    fieldNames[1] = "staticI32";
    fieldNames[2] = "staticU128";
    fieldNames[3] = "staticAddrs";
    fieldNames[4] = "staticBools";
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

  /** Get staticB32 */
  function getStaticB32(bytes32 key) internal view returns (bytes32[1] memory staticB32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0, getFieldLayout());
    return toStaticArray_bytes32_1(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Get staticB32 (using the specified store) */
  function getStaticB32(IStore _store, bytes32 key) internal view returns (bytes32[1] memory staticB32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0, getFieldLayout());
    return toStaticArray_bytes32_1(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bytes32());
  }

  /** Set staticB32 */
  function setStaticB32(bytes32 key, bytes32[1] memory staticB32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(
      _tableId,
      _keyTuple,
      0,
      EncodeArray.encode(fromStaticArray_bytes32_1(staticB32)),
      getFieldLayout()
    );
  }

  /** Set staticB32 (using the specified store) */
  function setStaticB32(IStore _store, bytes32 key, bytes32[1] memory staticB32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 0, EncodeArray.encode(fromStaticArray_bytes32_1(staticB32)), getFieldLayout());
  }

  /** Get the length of staticB32 */
  function lengthStaticB32(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 0, getFieldLayout());
    unchecked {
      return _byteLength / 32;
    }
  }

  /** Get the length of staticB32 (using the specified store) */
  function lengthStaticB32(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 0, getFieldLayout());
    unchecked {
      return _byteLength / 32;
    }
  }

  /**
   * Get an item of staticB32
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticB32(bytes32 key, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        0,
        getFieldLayout(),
        _index * 32,
        (_index + 1) * 32
      );
      return (Bytes.slice32(_blob, 0));
    }
  }

  /**
   * Get an item of staticB32 (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticB32(IStore _store, bytes32 key, uint256 _index) internal view returns (bytes32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(
        _tableId,
        _keyTuple,
        0,
        getFieldLayout(),
        _index * 32,
        (_index + 1) * 32
      );
      return (Bytes.slice32(_blob, 0));
    }
  }

  /** Push an element to staticB32 */
  function pushStaticB32(bytes32 key, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Push an element to staticB32 (using the specified store) */
  function pushStaticB32(IStore _store, bytes32 key, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 0, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Pop an element from staticB32 */
  function popStaticB32(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 0, 32, getFieldLayout());
  }

  /** Pop an element from staticB32 (using the specified store) */
  function popStaticB32(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 0, 32, getFieldLayout());
  }

  /**
   * Update an element of staticB32 at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticB32(bytes32 key, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /**
   * Update an element of staticB32 (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticB32(IStore _store, bytes32 key, uint256 _index, bytes32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 0, _index * 32, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /** Get staticI32 */
  function getStaticI32(bytes32 key) internal view returns (int32[2] memory staticI32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1, getFieldLayout());
    return toStaticArray_int32_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_int32());
  }

  /** Get staticI32 (using the specified store) */
  function getStaticI32(IStore _store, bytes32 key) internal view returns (int32[2] memory staticI32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1, getFieldLayout());
    return toStaticArray_int32_2(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_int32());
  }

  /** Set staticI32 */
  function setStaticI32(bytes32 key, int32[2] memory staticI32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(
      _tableId,
      _keyTuple,
      1,
      EncodeArray.encode(fromStaticArray_int32_2(staticI32)),
      getFieldLayout()
    );
  }

  /** Set staticI32 (using the specified store) */
  function setStaticI32(IStore _store, bytes32 key, int32[2] memory staticI32) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 1, EncodeArray.encode(fromStaticArray_int32_2(staticI32)), getFieldLayout());
  }

  /** Get the length of staticI32 */
  function lengthStaticI32(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 1, getFieldLayout());
    unchecked {
      return _byteLength / 4;
    }
  }

  /** Get the length of staticI32 (using the specified store) */
  function lengthStaticI32(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 1, getFieldLayout());
    unchecked {
      return _byteLength / 4;
    }
  }

  /**
   * Get an item of staticI32
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticI32(bytes32 key, uint256 _index) internal view returns (int32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        1,
        getFieldLayout(),
        _index * 4,
        (_index + 1) * 4
      );
      return (int32(uint32(Bytes.slice4(_blob, 0))));
    }
  }

  /**
   * Get an item of staticI32 (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticI32(IStore _store, bytes32 key, uint256 _index) internal view returns (int32) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 1, getFieldLayout(), _index * 4, (_index + 1) * 4);
      return (int32(uint32(Bytes.slice4(_blob, 0))));
    }
  }

  /** Push an element to staticI32 */
  function pushStaticI32(bytes32 key, int32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 1, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Push an element to staticI32 (using the specified store) */
  function pushStaticI32(IStore _store, bytes32 key, int32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 1, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Pop an element from staticI32 */
  function popStaticI32(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 1, 4, getFieldLayout());
  }

  /** Pop an element from staticI32 (using the specified store) */
  function popStaticI32(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 1, 4, getFieldLayout());
  }

  /**
   * Update an element of staticI32 at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticI32(bytes32 key, uint256 _index, int32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 1, _index * 4, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /**
   * Update an element of staticI32 (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticI32(IStore _store, bytes32 key, uint256 _index, int32 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 1, _index * 4, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /** Get staticU128 */
  function getStaticU128(bytes32 key) internal view returns (uint128[3] memory staticU128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2, getFieldLayout());
    return toStaticArray_uint128_3(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint128());
  }

  /** Get staticU128 (using the specified store) */
  function getStaticU128(IStore _store, bytes32 key) internal view returns (uint128[3] memory staticU128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2, getFieldLayout());
    return toStaticArray_uint128_3(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_uint128());
  }

  /** Set staticU128 */
  function setStaticU128(bytes32 key, uint128[3] memory staticU128) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(
      _tableId,
      _keyTuple,
      2,
      EncodeArray.encode(fromStaticArray_uint128_3(staticU128)),
      getFieldLayout()
    );
  }

  /** Set staticU128 (using the specified store) */
  function setStaticU128(IStore _store, bytes32 key, uint128[3] memory staticU128) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(
      _tableId,
      _keyTuple,
      2,
      EncodeArray.encode(fromStaticArray_uint128_3(staticU128)),
      getFieldLayout()
    );
  }

  /** Get the length of staticU128 */
  function lengthStaticU128(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, getFieldLayout());
    unchecked {
      return _byteLength / 16;
    }
  }

  /** Get the length of staticU128 (using the specified store) */
  function lengthStaticU128(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, getFieldLayout());
    unchecked {
      return _byteLength / 16;
    }
  }

  /**
   * Get an item of staticU128
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticU128(bytes32 key, uint256 _index) internal view returns (uint128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        2,
        getFieldLayout(),
        _index * 16,
        (_index + 1) * 16
      );
      return (uint128(Bytes.slice16(_blob, 0)));
    }
  }

  /**
   * Get an item of staticU128 (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticU128(IStore _store, bytes32 key, uint256 _index) internal view returns (uint128) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(
        _tableId,
        _keyTuple,
        2,
        getFieldLayout(),
        _index * 16,
        (_index + 1) * 16
      );
      return (uint128(Bytes.slice16(_blob, 0)));
    }
  }

  /** Push an element to staticU128 */
  function pushStaticU128(bytes32 key, uint128 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Push an element to staticU128 (using the specified store) */
  function pushStaticU128(IStore _store, bytes32 key, uint128 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 2, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Pop an element from staticU128 */
  function popStaticU128(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 16, getFieldLayout());
  }

  /** Pop an element from staticU128 (using the specified store) */
  function popStaticU128(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 2, 16, getFieldLayout());
  }

  /**
   * Update an element of staticU128 at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticU128(bytes32 key, uint256 _index, uint128 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 16, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /**
   * Update an element of staticU128 (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticU128(IStore _store, bytes32 key, uint256 _index, uint128 _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 2, _index * 16, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /** Get staticAddrs */
  function getStaticAddrs(bytes32 key) internal view returns (address[4] memory staticAddrs) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3, getFieldLayout());
    return toStaticArray_address_4(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_address());
  }

  /** Get staticAddrs (using the specified store) */
  function getStaticAddrs(IStore _store, bytes32 key) internal view returns (address[4] memory staticAddrs) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3, getFieldLayout());
    return toStaticArray_address_4(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_address());
  }

  /** Set staticAddrs */
  function setStaticAddrs(bytes32 key, address[4] memory staticAddrs) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(
      _tableId,
      _keyTuple,
      3,
      EncodeArray.encode(fromStaticArray_address_4(staticAddrs)),
      getFieldLayout()
    );
  }

  /** Set staticAddrs (using the specified store) */
  function setStaticAddrs(IStore _store, bytes32 key, address[4] memory staticAddrs) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(
      _tableId,
      _keyTuple,
      3,
      EncodeArray.encode(fromStaticArray_address_4(staticAddrs)),
      getFieldLayout()
    );
  }

  /** Get the length of staticAddrs */
  function lengthStaticAddrs(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 3, getFieldLayout());
    unchecked {
      return _byteLength / 20;
    }
  }

  /** Get the length of staticAddrs (using the specified store) */
  function lengthStaticAddrs(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 3, getFieldLayout());
    unchecked {
      return _byteLength / 20;
    }
  }

  /**
   * Get an item of staticAddrs
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticAddrs(bytes32 key, uint256 _index) internal view returns (address) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        3,
        getFieldLayout(),
        _index * 20,
        (_index + 1) * 20
      );
      return (address(Bytes.slice20(_blob, 0)));
    }
  }

  /**
   * Get an item of staticAddrs (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticAddrs(IStore _store, bytes32 key, uint256 _index) internal view returns (address) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(
        _tableId,
        _keyTuple,
        3,
        getFieldLayout(),
        _index * 20,
        (_index + 1) * 20
      );
      return (address(Bytes.slice20(_blob, 0)));
    }
  }

  /** Push an element to staticAddrs */
  function pushStaticAddrs(bytes32 key, address _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 3, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Push an element to staticAddrs (using the specified store) */
  function pushStaticAddrs(IStore _store, bytes32 key, address _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 3, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Pop an element from staticAddrs */
  function popStaticAddrs(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 3, 20, getFieldLayout());
  }

  /** Pop an element from staticAddrs (using the specified store) */
  function popStaticAddrs(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 3, 20, getFieldLayout());
  }

  /**
   * Update an element of staticAddrs at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticAddrs(bytes32 key, uint256 _index, address _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 3, _index * 20, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /**
   * Update an element of staticAddrs (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticAddrs(IStore _store, bytes32 key, uint256 _index, address _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 3, _index * 20, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /** Get staticBools */
  function getStaticBools(bytes32 key) internal view returns (bool[5] memory staticBools) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4, getFieldLayout());
    return toStaticArray_bool_5(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bool());
  }

  /** Get staticBools (using the specified store) */
  function getStaticBools(IStore _store, bytes32 key) internal view returns (bool[5] memory staticBools) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4, getFieldLayout());
    return toStaticArray_bool_5(SliceLib.getSubslice(_blob, 0, _blob.length).decodeArray_bool());
  }

  /** Set staticBools */
  function setStaticBools(bytes32 key, bool[5] memory staticBools) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(
      _tableId,
      _keyTuple,
      4,
      EncodeArray.encode(fromStaticArray_bool_5(staticBools)),
      getFieldLayout()
    );
  }

  /** Set staticBools (using the specified store) */
  function setStaticBools(IStore _store, bytes32 key, bool[5] memory staticBools) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 4, EncodeArray.encode(fromStaticArray_bool_5(staticBools)), getFieldLayout());
  }

  /** Get the length of staticBools */
  function lengthStaticBools(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 4, getFieldLayout());
    unchecked {
      return _byteLength / 1;
    }
  }

  /** Get the length of staticBools (using the specified store) */
  function lengthStaticBools(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 4, getFieldLayout());
    unchecked {
      return _byteLength / 1;
    }
  }

  /**
   * Get an item of staticBools
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticBools(bytes32 key, uint256 _index) internal view returns (bool) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = StoreSwitch.getFieldSlice(
        _tableId,
        _keyTuple,
        4,
        getFieldLayout(),
        _index * 1,
        (_index + 1) * 1
      );
      return (_toBool(uint8(Bytes.slice1(_blob, 0))));
    }
  }

  /**
   * Get an item of staticBools (using the specified store)
   * (unchecked, returns invalid data if index overflows)
   */
  function getItemStaticBools(IStore _store, bytes32 key, uint256 _index) internal view returns (bool) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 4, getFieldLayout(), _index * 1, (_index + 1) * 1);
      return (_toBool(uint8(Bytes.slice1(_blob, 0))));
    }
  }

  /** Push an element to staticBools */
  function pushStaticBools(bytes32 key, bool _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.pushToField(_tableId, _keyTuple, 4, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Push an element to staticBools (using the specified store) */
  function pushStaticBools(IStore _store, bytes32 key, bool _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.pushToField(_tableId, _keyTuple, 4, abi.encodePacked((_element)), getFieldLayout());
  }

  /** Pop an element from staticBools */
  function popStaticBools(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.popFromField(_tableId, _keyTuple, 4, 1, getFieldLayout());
  }

  /** Pop an element from staticBools (using the specified store) */
  function popStaticBools(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.popFromField(_tableId, _keyTuple, 4, 1, getFieldLayout());
  }

  /**
   * Update an element of staticBools at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticBools(bytes32 key, uint256 _index, bool _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      StoreSwitch.updateInField(_tableId, _keyTuple, 4, _index * 1, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /**
   * Update an element of staticBools (using the specified store) at `_index`
   * (checked only to prevent modifying other tables; can corrupt own data if index overflows)
   */
  function updateStaticBools(IStore _store, bytes32 key, uint256 _index, bool _element) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    unchecked {
      _store.updateInField(_tableId, _keyTuple, 4, _index * 1, abi.encodePacked((_element)), getFieldLayout());
    }
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (Dynamics1Data memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getFieldLayout());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (Dynamics1Data memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getFieldLayout());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    bytes32 key,
    bytes32[1] memory staticB32,
    int32[2] memory staticI32,
    uint128[3] memory staticU128,
    address[4] memory staticAddrs,
    bool[5] memory staticBools
  ) internal {
    bytes memory _data = encode(staticB32, staticI32, staticU128, staticAddrs, staticBools);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data, getFieldLayout());
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 key,
    bytes32[1] memory staticB32,
    int32[2] memory staticI32,
    uint128[3] memory staticU128,
    address[4] memory staticAddrs,
    bool[5] memory staticBools
  ) internal {
    bytes memory _data = encode(staticB32, staticI32, staticU128, staticAddrs, staticBools);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setRecord(_tableId, _keyTuple, _data, getFieldLayout());
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, Dynamics1Data memory _table) internal {
    set(key, _table.staticB32, _table.staticI32, _table.staticU128, _table.staticAddrs, _table.staticBools);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, Dynamics1Data memory _table) internal {
    set(_store, key, _table.staticB32, _table.staticI32, _table.staticU128, _table.staticAddrs, _table.staticBools);
  }

  /**
   * Decode the tightly packed blob using this table's field layout.
   * Undefined behaviour for invalid blobs.
   */
  function decode(bytes memory _blob) internal pure returns (Dynamics1Data memory _table) {
    // 0 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 0));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 0) {
      // skip static data length + dynamic lengths word
      uint256 _start = 32;
      uint256 _end;
      unchecked {
        _end = 32 + _encodedLengths.atIndex(0);
      }
      _table.staticB32 = toStaticArray_bytes32_1(SliceLib.getSubslice(_blob, _start, _end).decodeArray_bytes32());

      _start = _end;
      unchecked {
        _end += _encodedLengths.atIndex(1);
      }
      _table.staticI32 = toStaticArray_int32_2(SliceLib.getSubslice(_blob, _start, _end).decodeArray_int32());

      _start = _end;
      unchecked {
        _end += _encodedLengths.atIndex(2);
      }
      _table.staticU128 = toStaticArray_uint128_3(SliceLib.getSubslice(_blob, _start, _end).decodeArray_uint128());

      _start = _end;
      unchecked {
        _end += _encodedLengths.atIndex(3);
      }
      _table.staticAddrs = toStaticArray_address_4(SliceLib.getSubslice(_blob, _start, _end).decodeArray_address());

      _start = _end;
      unchecked {
        _end += _encodedLengths.atIndex(4);
      }
      _table.staticBools = toStaticArray_bool_5(SliceLib.getSubslice(_blob, _start, _end).decodeArray_bool());
    }
  }

  /** Tightly pack full data using this table's field layout */
  function encode(
    bytes32[1] memory staticB32,
    int32[2] memory staticI32,
    uint128[3] memory staticU128,
    address[4] memory staticAddrs,
    bool[5] memory staticBools
  ) internal pure returns (bytes memory) {
    PackedCounter _encodedLengths;
    // Lengths are effectively checked during copy by 2**40 bytes exceeding gas limits
    unchecked {
      _encodedLengths = PackedCounterLib.pack(
        staticB32.length * 32,
        staticI32.length * 4,
        staticU128.length * 16,
        staticAddrs.length * 20,
        staticBools.length * 1
      );
    }

    return
      abi.encodePacked(
        _encodedLengths.unwrap(),
        EncodeArray.encode(fromStaticArray_bytes32_1(staticB32)),
        EncodeArray.encode(fromStaticArray_int32_2(staticI32)),
        EncodeArray.encode(fromStaticArray_uint128_3(staticU128)),
        EncodeArray.encode(fromStaticArray_address_4(staticAddrs)),
        EncodeArray.encode(fromStaticArray_bool_5(staticBools))
      );
  }

  /** Encode keys as a bytes32 array using this table's field layout */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    return _keyTuple;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.deleteRecord(_tableId, _keyTuple, getFieldLayout());
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.deleteRecord(_tableId, _keyTuple, getFieldLayout());
  }
}

function toStaticArray_bytes32_1(bytes32[] memory _value) pure returns (bytes32[1] memory _result) {
  // in memory static arrays are just dynamic arrays without the length byte
  assembly {
    _result := add(_value, 0x20)
  }
}

function toStaticArray_int32_2(int32[] memory _value) pure returns (int32[2] memory _result) {
  // in memory static arrays are just dynamic arrays without the length byte
  assembly {
    _result := add(_value, 0x20)
  }
}

function toStaticArray_uint128_3(uint128[] memory _value) pure returns (uint128[3] memory _result) {
  // in memory static arrays are just dynamic arrays without the length byte
  assembly {
    _result := add(_value, 0x20)
  }
}

function toStaticArray_address_4(address[] memory _value) pure returns (address[4] memory _result) {
  // in memory static arrays are just dynamic arrays without the length byte
  assembly {
    _result := add(_value, 0x20)
  }
}

function toStaticArray_bool_5(bool[] memory _value) pure returns (bool[5] memory _result) {
  // in memory static arrays are just dynamic arrays without the length byte
  assembly {
    _result := add(_value, 0x20)
  }
}

function fromStaticArray_bytes32_1(bytes32[1] memory _value) pure returns (bytes32[] memory _result) {
  _result = new bytes32[](1);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 32);
}

function fromStaticArray_int32_2(int32[2] memory _value) pure returns (int32[] memory _result) {
  _result = new int32[](2);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 64);
}

function fromStaticArray_uint128_3(uint128[3] memory _value) pure returns (uint128[] memory _result) {
  _result = new uint128[](3);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 96);
}

function fromStaticArray_address_4(address[4] memory _value) pure returns (address[] memory _result) {
  _result = new address[](4);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 128);
}

function fromStaticArray_bool_5(bool[5] memory _value) pure returns (bool[] memory _result) {
  _result = new bool[](5);
  uint256 fromPointer;
  uint256 toPointer;
  assembly {
    fromPointer := _value
    toPointer := add(_result, 0x20)
  }
  Memory.copy(fromPointer, toPointer, 160);
}

function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}
