// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;
import "solecs/Component.sol";

contract Uint256ArrayComponent is Component {
  constructor(address world, uint256 id) Component(world, id) {}

  function getSchema() public pure override returns (string[] memory keys, LibTypes.SchemaValue[] memory values) {
    keys = new string[](1);
    values = new LibTypes.SchemaValue[](1);

    keys[0] = "value";
    values[0] = LibTypes.SchemaValue.UINT256_ARRAY;
  }

  function set(uint256 entity, uint256[] memory value) public virtual {
    set(entity, abi.encode(value));
  }

  function getValue(uint256 entity) public view virtual returns (uint256[] memory) {
    return abi.decode(getRawValue(entity), (uint256[]));
  }

  function getEntitiesWithValue(uint256 value) public view virtual returns (uint256[] memory) {
    return getEntitiesWithValue(abi.encode(value));
  }
}