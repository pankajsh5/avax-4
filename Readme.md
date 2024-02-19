# FreeFire Token (FF)

FreeFire Token (FF) is an ERC-20 token implemented on the Ethereum blockchain. It serves as a utility token for the FreeFire platform, enabling users to access certain features or benefits within the ecosystem.

## Features

- **Token Name**: FreeFire
- **Symbol**: FF
- **Total Supply**: Initially 10 tokens
- **ERC-20 Compliance**: Compliant with the ERC-20 standard, ensuring interoperability with other Ethereum-based projects.
- **Redeemable Coupons**: Users can redeem coupons for specific items or benefits within the platform.
- **Minting and Burning**: The owner has the ability to mint new tokens and burn existing ones.
- **Access Control**: Certain functions are restricted to the owner only.

## Smart Contract Overview

### Contract Structure

The FreeFire token contract (`FreeFire.sol`) inherits from OpenZeppelin's `ERC20` and `Ownable` contracts.

### Variables

- `Coupen`: A public constant representing the number of tokens required to redeem a coupon.
- `CoupenRedeemed`: A mapping to keep track of whether a user has already redeemed their coupon.

### Constructor

The constructor initializes the token with the name "FreeFire" and symbol "FF". It mints an initial supply of tokens to the deployer's address.

### Functions

- `mintLoot`: Allows the owner to mint additional tokens and send them to a specified account.
- `redeemItem`: Allows users to redeem a coupon, provided they have the required balance and haven't already redeemed the coupon.
- `burnLoot`: Allows users to burn (destroy) a certain amount of tokens from their own balance.

## Usage

To interact with the FreeFire token, you can use any Ethereum wallet or contract that supports ERC-20 tokens. Users can transfer, receive, and hold FF tokens. Additionally, they can redeem coupons using the `redeemItem` function if they meet the requirements.

## Security Considerations

- The contract utilizes OpenZeppelin libraries, a well-audited set of contracts that adhere to best security practices.
- Access control is implemented to ensure that only the owner can execute certain critical functions, such as minting new tokens.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

