/* Autogenerated file. Do not edit manually. */
/* tslint:disable */
/* eslint-disable */
import type {
  BaseContract,
  BigNumber,
  BytesLike,
  CallOverrides,
  ContractTransaction,
  Overrides,
  PopulatedTransaction,
  Signer,
  utils,
} from "ethers";
import type { FunctionFragment, Result } from "@ethersproject/abi";
import type { Listener, Provider } from "@ethersproject/providers";
import type {
  TypedEventFilter,
  TypedEvent,
  TypedListener,
  OnEvent,
  PromiseOrValue,
} from "./common";

export interface IStoreRegistrationSystemInterface extends utils.Interface {
  functions: {
    "registerSchema(bytes32,bytes32,bytes32)": FunctionFragment;
    "registerStoreHook(bytes32,address)": FunctionFragment;
    "setMetadata(bytes32,string,string[])": FunctionFragment;
  };

  getFunction(
    nameOrSignatureOrTopic:
      | "registerSchema"
      | "registerStoreHook"
      | "setMetadata"
  ): FunctionFragment;

  encodeFunctionData(
    functionFragment: "registerSchema",
    values: [
      PromiseOrValue<BytesLike>,
      PromiseOrValue<BytesLike>,
      PromiseOrValue<BytesLike>
    ]
  ): string;
  encodeFunctionData(
    functionFragment: "registerStoreHook",
    values: [PromiseOrValue<BytesLike>, PromiseOrValue<string>]
  ): string;
  encodeFunctionData(
    functionFragment: "setMetadata",
    values: [
      PromiseOrValue<BytesLike>,
      PromiseOrValue<string>,
      PromiseOrValue<string>[]
    ]
  ): string;

  decodeFunctionResult(
    functionFragment: "registerSchema",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "registerStoreHook",
    data: BytesLike
  ): Result;
  decodeFunctionResult(
    functionFragment: "setMetadata",
    data: BytesLike
  ): Result;

  events: {};
}

export interface IStoreRegistrationSystem extends BaseContract {
  connect(signerOrProvider: Signer | Provider | string): this;
  attach(addressOrName: string): this;
  deployed(): Promise<this>;

  interface: IStoreRegistrationSystemInterface;

  queryFilter<TEvent extends TypedEvent>(
    event: TypedEventFilter<TEvent>,
    fromBlockOrBlockhash?: string | number | undefined,
    toBlock?: string | number | undefined
  ): Promise<Array<TEvent>>;

  listeners<TEvent extends TypedEvent>(
    eventFilter?: TypedEventFilter<TEvent>
  ): Array<TypedListener<TEvent>>;
  listeners(eventName?: string): Array<Listener>;
  removeAllListeners<TEvent extends TypedEvent>(
    eventFilter: TypedEventFilter<TEvent>
  ): this;
  removeAllListeners(eventName?: string): this;
  off: OnEvent<this>;
  on: OnEvent<this>;
  once: OnEvent<this>;
  removeListener: OnEvent<this>;

  functions: {
    registerSchema(
      tableId: PromiseOrValue<BytesLike>,
      valueSchema: PromiseOrValue<BytesLike>,
      keySchema: PromiseOrValue<BytesLike>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    registerStoreHook(
      tableId: PromiseOrValue<BytesLike>,
      hook: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;

    setMetadata(
      tableId: PromiseOrValue<BytesLike>,
      tableName: PromiseOrValue<string>,
      fieldNames: PromiseOrValue<string>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<ContractTransaction>;
  };

  registerSchema(
    tableId: PromiseOrValue<BytesLike>,
    valueSchema: PromiseOrValue<BytesLike>,
    keySchema: PromiseOrValue<BytesLike>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  registerStoreHook(
    tableId: PromiseOrValue<BytesLike>,
    hook: PromiseOrValue<string>,
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  setMetadata(
    tableId: PromiseOrValue<BytesLike>,
    tableName: PromiseOrValue<string>,
    fieldNames: PromiseOrValue<string>[],
    overrides?: Overrides & { from?: PromiseOrValue<string> }
  ): Promise<ContractTransaction>;

  callStatic: {
    registerSchema(
      tableId: PromiseOrValue<BytesLike>,
      valueSchema: PromiseOrValue<BytesLike>,
      keySchema: PromiseOrValue<BytesLike>,
      overrides?: CallOverrides
    ): Promise<void>;

    registerStoreHook(
      tableId: PromiseOrValue<BytesLike>,
      hook: PromiseOrValue<string>,
      overrides?: CallOverrides
    ): Promise<void>;

    setMetadata(
      tableId: PromiseOrValue<BytesLike>,
      tableName: PromiseOrValue<string>,
      fieldNames: PromiseOrValue<string>[],
      overrides?: CallOverrides
    ): Promise<void>;
  };

  filters: {};

  estimateGas: {
    registerSchema(
      tableId: PromiseOrValue<BytesLike>,
      valueSchema: PromiseOrValue<BytesLike>,
      keySchema: PromiseOrValue<BytesLike>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    registerStoreHook(
      tableId: PromiseOrValue<BytesLike>,
      hook: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;

    setMetadata(
      tableId: PromiseOrValue<BytesLike>,
      tableName: PromiseOrValue<string>,
      fieldNames: PromiseOrValue<string>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<BigNumber>;
  };

  populateTransaction: {
    registerSchema(
      tableId: PromiseOrValue<BytesLike>,
      valueSchema: PromiseOrValue<BytesLike>,
      keySchema: PromiseOrValue<BytesLike>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    registerStoreHook(
      tableId: PromiseOrValue<BytesLike>,
      hook: PromiseOrValue<string>,
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;

    setMetadata(
      tableId: PromiseOrValue<BytesLike>,
      tableName: PromiseOrValue<string>,
      fieldNames: PromiseOrValue<string>[],
      overrides?: Overrides & { from?: PromiseOrValue<string> }
    ): Promise<PopulatedTransaction>;
  };
}