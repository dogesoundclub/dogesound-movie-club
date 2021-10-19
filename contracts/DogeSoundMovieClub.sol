pragma solidity ^0.5.6;

import "./klaytn-contracts/token/KIP37/KIP37.sol";
import "./klaytn-contracts/token/KIP37/KIP37Burnable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Pausable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Mintable.sol";

contract DogeSoundMovieClub is KIP37, KIP37Burnable, KIP37Pausable, KIP37Mintable {
    constructor() public KIP37("") {}

    function bulkTransfer(uint256 id, address[] calldata tos) external {
        uint256 length = tos.length;
        for (uint256 i = 0; i < length; i += 1) {
            safeTransferFrom(
                msg.sender,
                tos[i],
                id,
                1,
                ""
            );
        }
    }
}
