// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "kontrol-cheatcodes/KontrolCheats.sol";

contract WoTTest is Test, KontrolCheats {
    address wot;
    
    function setUp() public {
       // Setting up WOT contract https://basescan.org/address/0x8c3ed1f4D142965D19e0DB48Ae189dd9448Ad95A
        wot = address(0x8c3ed1f4D142965D19e0DB48Ae189dd9448Ad95A); 
        vm.etch(wot, bytes(hex"5f3560e01c60026007820660011b61049d01601e395f51565b6306fdde038118610067573461049957602080604052806040015f54815260015460208201528051806020830101601f825f03163682375050601f19601f825160200101169050810190506040f35b63a9059cbb811861043557604436103417610499576004358060a01c6104995761018052411561009c5760095443101561009e565b5f5b156100cc574360095533604052610180516060523360805260243560a0526100c76101a0610439565b6101a0505b6005336020525f5260405f20805460243580820382811161049957905090508155506005610180516020525f5260405f208054602435808201828110610499579050905081555061018051337fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef6024356101a05260206101a0a360016101a05260206101a0f3610435565b6395d89b4181186101a757346104995760208060405280604001600254815260035460208201528051806020830101601f825f03163682375050601f19601f825160200101169050810190506040f35b63dd62ed3e811861043557604436103417610499576004358060a01c610499576040526024358060a01c6104995760605260066040516020525f5260405f20806060516020525f5260405f2090505460805260206080f3610435565b63313ce567811861021f57346104995760045460405260206040f35b6318160ddd811861043557346104995760075460405260206040f3610435565b6370a08231811861043557602436103417610499576004358060a01c6104995760405260056040516020525f5260405f205460605260206060f3610435565b6323b872dd811861043557606436103417610499576004358060a01c61049957610180526024358060a01c610499576101a05241156102c2576009544310156102c4565b5f5b156102f55743600955610180516040526101a0516060523360805260443560a0526102f06101c0610439565b6101c0505b6006610180516020525f5260405f2080336020525f5260405f209050805460443580820382811161049957905090508155506005610180516020525f5260405f208054604435808203828111610499579050905081555060056101a0516020525f5260405f20805460443580820182811061049957905090508155506101a051610180517fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef6044356101c05260206101c0a360016101c05260206101c0f3610435565b63095ea7b3811861043557604436103417610499576004358060a01c610499576040526024356006336020525f5260405f20806040516020525f5260405f20905055604051337f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b92560243560605260206060a3600160605260206060f35b5f5ffd5b6008546303176f7960c05260405160e052606051610100526080516101205260a05161014052602060c0608460dc5f855af1610477573d5f5f3e3d5ffd5b60203d106104995760c0518060011c6104995761016052610160905051815250565b5f80fd023f03b8027e0018043502030157"));
        vm.setArbitraryStorage(wot); // ?STORAGE

        // Setting up transferChecker contract https://basescan.org/address/0x6de05152A0eC7d668EA54d8FB564fE4a68C07889
        address wot_tc = address(0x6de05152A0eC7d668EA54d8FB564fE4a68C07889);
        vm.etch(wot_tc, bytes(hex"608060405260043610610058575f3560e01c80633659cfe6146100715780634f1ef2861461009957806353e83f46146100b55780635c60da1b146100f15780638f2839701461011b578063f851a4401461014357610067565b366100675761006561016d565b005b61006f61016d565b005b34801561007c575f80fd5b506100976004803603810190610092919061093b565b610187565b005b6100b360048036038101906100ae91906109c7565b6101eb565b005b3480156100c0575f80fd5b506100db60048036038101906100d69190610a57565b610287565b6040516100e89190610a91565b60405180910390f35b3480156100fc575f80fd5b50610105610290565b6040516101129190610ab9565b60405180910390f35b348015610126575f80fd5b50610141600480360381019061013c919061093b565b6102e6565b005b34801561014e575f80fd5b5061015761033a565b6040516101649190610ab9565b60405180910390f35b610175610390565b61018561018061040f565b61041d565b565b61018f61043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16036101df576101da8160405180602001604052805f8152505f61048f565b6101e8565b6101e761016d565b5b50565b6101f361043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1603610279576102748383838080601f0160208091040260200160405190810160405280939291908181526020018383808284375f81840152601f19601f82011690508083019250505050505050600161048f565b610282565b61028161016d565b5b505050565b5f819050919050565b5f61029961043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16036102da576102d361040f565b90506102e3565b6102e261016d565b5b90565b6102ee61043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff160361032e57610329816104ba565b610337565b61033661016d565b5b50565b5f61034361043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16036103845761037d61043c565b905061038d565b61038c61016d565b5b90565b61039861043c565b73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1603610405576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016103fc90610b78565b60405180910390fd5b61040d610506565b565b5f610418610508565b905090565b365f80375f80365f845af43d5f803e805f8114610438573d5ff35b3d5ffd5b5f6104687fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035f1b61055b565b5f015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b61049883610564565b5f825111806104a45750805b156104b5576104b383836105b3565b505b505050565b7f7e644d79422f17c01e4894b5f4f588d331ebfa28653d42ae832dc59e38c9798f6104e361043c565b826040516104f2929190610b96565b60405180910390a1610503816105e0565b50565b565b5f6105347f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc5f1b61055b565b5f015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff16905090565b5f819050919050565b61056d816106bc565b8073ffffffffffffffffffffffffffffffffffffffff167fbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b60405160405180910390a250565b60606105d88383604051806060016040528060278152602001610e1c60279139610772565b905092915050565b5f73ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff160361064e576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161064590610c2d565b60405180910390fd5b8061067a7fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035f1b61055b565b5f015f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b6106c5816107f4565b610704576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016106fb90610cbb565b60405180910390fd5b806107307f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc5f1b61055b565b5f015f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b60605f808573ffffffffffffffffffffffffffffffffffffffff168560405161079b9190610d2b565b5f60405180830381855af49150503d805f81146107d3576040519150601f19603f3d011682016040523d82523d5f602084013e6107d8565b606091505b50915091506107e986838387610816565b925050509392505050565b5f808273ffffffffffffffffffffffffffffffffffffffff163b119050919050565b60608315610877575f83510361086f5761082f856107f4565b61086e576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161086590610d8b565b60405180910390fd5b5b829050610882565b610881838361088a565b5b949350505050565b5f8251111561089c5781518083602001fd5b806040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016108d09190610dfb565b60405180910390fd5b5f80fd5b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f61090a826108e1565b9050919050565b61091a81610900565b8114610924575f80fd5b50565b5f8135905061093581610911565b92915050565b5f602082840312156109505761094f6108d9565b5b5f61095d84828501610927565b91505092915050565b5f80fd5b5f80fd5b5f80fd5b5f8083601f84011261098757610986610966565b5b8235905067ffffffffffffffff8111156109a4576109a361096a565b5b6020830191508360018202830111156109c0576109bf61096e565b5b9250929050565b5f805f604084860312156109de576109dd6108d9565b5b5f6109eb86828701610927565b935050602084013567ffffffffffffffff811115610a0c57610a0b6108dd565b5b610a1886828701610972565b92509250509250925092565b5f819050919050565b610a3681610a24565b8114610a40575f80fd5b50565b5f81359050610a5181610a2d565b92915050565b5f60208284031215610a6c57610a6b6108d9565b5b5f610a7984828501610a43565b91505092915050565b610a8b81610a24565b82525050565b5f602082019050610aa45f830184610a82565b92915050565b610ab381610900565b82525050565b5f602082019050610acc5f830184610aaa565b92915050565b5f82825260208201905092915050565b7f5472616e73706172656e745570677261646561626c6550726f78793a2061646d5f8201527f696e2063616e6e6f742066616c6c6261636b20746f2070726f7879207461726760208201527f6574000000000000000000000000000000000000000000000000000000000000604082015250565b5f610b62604283610ad2565b9150610b6d82610ae2565b606082019050919050565b5f6020820190508181035f830152610b8f81610b56565b9050919050565b5f604082019050610ba95f830185610aaa565b610bb66020830184610aaa565b9392505050565b7f455243313936373a206e65772061646d696e20697320746865207a65726f20615f8201527f6464726573730000000000000000000000000000000000000000000000000000602082015250565b5f610c17602683610ad2565b9150610c2282610bbd565b604082019050919050565b5f6020820190508181035f830152610c4481610c0b565b9050919050565b7f455243313936373a206e657720696d706c656d656e746174696f6e206973206e5f8201527f6f74206120636f6e747261637400000000000000000000000000000000000000602082015250565b5f610ca5602d83610ad2565b9150610cb082610c4b565b604082019050919050565b5f6020820190508181035f830152610cd281610c99565b9050919050565b5f81519050919050565b5f81905092915050565b8281835e5f83830152505050565b5f610d0582610cd9565b610d0f8185610ce3565b9350610d1f818560208601610ced565b80840191505092915050565b5f610d368284610cfb565b915081905092915050565b7f416464726573733a2063616c6c20746f206e6f6e2d636f6e74726163740000005f82015250565b5f610d75601d83610ad2565b9150610d8082610d41565b602082019050919050565b5f6020820190508181035f830152610da281610d69565b9050919050565b5f81519050919050565b5f601f19601f8301169050919050565b5f610dcd82610da9565b610dd78185610ad2565b9350610de7818560208601610ced565b610df081610db3565b840191505092915050565b5f6020820190508181035f830152610e138184610dc3565b90509291505056fe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c6564a264697066735822122001a5a361e3ea964bdbd90bd9f8995126dc1d93619f52ce4450e3f265861bfd8e64736f6c634300081a0033"));
        
        vm.setArbitraryStorage(wot_tc); //?STORAGE0
        // set `transferChecker` address in WOT
        vm.store(wot,bytes32(uint256(8)), bytes32(uint256(uint160(wot_tc))));
        
        address addr_of_interest = address(0x14E136e385c79C1D0548a96bb90E9B4e9845A73F);
        vm.store(wot_tc, bytes32(uint256(81955473079516046949633743016697847541294818689821282749996681496272635257091)), bytes32(uint256(uint160(addr_of_interest))));
        // These fields were branching during execution in transferChecker as #lookup(?STORAGE0, slot)
        // and ?STORAGE0 is set for 0x6de05152a0ec7d668ea54d8fb564fe4a68c07889.
        // They also look like mapping entries so they might be related to the msg.sender which is the address of the test contract.
        // to check a slot: cast storage 0x6de05152a0ec7d668ea54d8fb564fe4a68c07889 81955473079516046949633743016697847541294818689821282749996681496272635257091 --rpc-url https://mainnet.base.org --chain 8453

        // vm.store(wot_tc, bytes32(uint256(92176716289232067132282836272875158765230181307894676212186306738099599030314)), bytes32(0));
        // vm.store(wot_tc, bytes32(uint256(114780517552515935620171773731191742103001937181785441609631115772415707507178)), bytes32(0));
        // vm.store(wot_tc, bytes32(uint256(24890058885594772868082194210704315982890157730123342977540955694542831943486)), bytes32(0));
        // vm.store(wot_tc, bytes32(uint256(69754373171698122749132262717936541513022023835681898290461777562612473346212)), bytes32(0));
        // vm.store(wot_tc, bytes32(uint256(109910455024463162827942188131314426003682484546953014233182922346044597808126)), bytes32(0));

        // Setting up `transferChecker` upgraded implementation https://basescan.org/address/0xFE840992EC8793E7C4F3B93F93E56cBEf0A61612
        address wot_tc_i = address(0xFE840992EC8793E7C4F3B93F93E56cBEf0A61612);
        vm.etch(wot_tc_i, bytes(hex"608060405234801561000f575f80fd5b506004361061014b575f3560e01c8063492553c2116100c1578063aaa11b8f1161007a578063aaa11b8f146103bd578063ad503030146103d9578063d1a277d714610409578063e3d33fc914610425578063edebffff14610443578063f41f68d41461045f5761014b565b8063492553c2146102fd5780634bde73221461031957806366530e01146103495780636bd1b4851461036557806378abafaf1461038357806388fb04a3146103a15761014b565b806312392a761161011357806312392a761461022b578063151643051461024757806318c7fc22146102635780631e402c7f14610293578063282d4f54146102af578063432b0954146102df5761014b565b806303176f791461014f5780630583ec361461017f57806306b6e13c1461019b5780630f7d659e146101cb578063121b9cfd146101fb575b5f80fd5b610169600480360381019061016491906127b1565b61047b565b604051610176919061282f565b60405180910390f35b61019960048036038101906101949190612848565b610b35565b005b6101b560048036038101906101b09190612886565b610b9f565b6040516101c2919061282f565b60405180910390f35b6101e560048036038101906101e091906128c4565b610bc9565b6040516101f2919061282f565b60405180910390f35b61021560048036038101906102109190612886565b610be6565b60405161022291906128fe565b60405180910390f35b61024560048036038101906102409190612941565b610c06565b005b610261600480360381019061025c9190612abc565b610c7a565b005b61027d600480360381019061027891906128c4565b610d5d565b60405161028a919061282f565b60405180910390f35b6102ad60048036038101906102a89190612abc565b610d7a565b005b6102c960048036038101906102c491906128c4565b610e5d565b6040516102d6919061282f565b60405180910390f35b6102e7610e7a565b6040516102f491906128fe565b60405180910390f35b61031760048036038101906103129190612abc565b610e80565b005b610333600480360381019061032e91906128c4565b610f63565b604051610340919061282f565b60405180910390f35b610363600480360381019061035e9190612abc565b610f80565b005b61036d611063565b60405161037a919061282f565b60405180910390f35b61038b611076565b60405161039891906128fe565b60405180910390f35b6103bb60048036038101906103b69190612b16565b61107c565b005b6103d760048036038101906103d29190612abc565b611189565b005b6103f360048036038101906103ee91906128c4565b61126c565b604051610400919061282f565b60405180910390f35b610423600480360381019061041e9190612941565b6112be565b005b61042d611333565b60405161043a91906128fe565b60405180910390f35b61045d60048036038101906104589190612b82565b611338565b005b610479600480360381019061047491906128c4565b611457565b005b5f60055f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff16156105cd575f3373ffffffffffffffffffffffffffffffffffffffff166370a08231866040518263ffffffff1660e01b81526004016105059190612bfd565b602060405180830381865afa158015610520573d5f803e3d5ffd5b505050506040513d601f19601f820116820180604052508101906105449190612c2a565b036105c857600160065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f20819055505b610823565b60055f8573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff1661082257600160065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f20546106a09190612c82565b60065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f2054101561082157600160065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f20546107a49190612c82565b60065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f20819055505b5b5b600760065f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205411156108ae575f6108ad575f80fd5b5b5f3290506001151560025f3373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8873ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff1615150361094c575f61094b575f80fd5b5b60035f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff16806109b357506001151560075f9054906101000a900460ff161515145b156109c2576001915050610b2d565b5f151560045f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff161515148015610ab5575060085f8773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff1680610ab4575060085f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff165b5b15610ac4575f610ac3575f80fd5b5b5f151560095f8773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff16151503610b22576001915050610b2d565b5f610b2b575f80fd5b505b949350505050565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610b8d575f80fd5b81600a8190555080600b819055505050565b6002602052815f5260405f20602052805f5260405f205f915091509054906101000a900460ff1681565b6005602052805f5260405f205f915054906101000a900460ff1681565b6006602052815f5260405f20602052805f5260405f205f91509150505481565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610c5e575f80fd5b8060075f6101000a81548160ff02191690831515021790555050565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610cd2575f80fd5b5f5b8251811015610d58578160035f858481518110610cf457610cf3612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055508080600101915050610cd4565b505050565b6008602052805f5260405f205f915054906101000a900460ff1681565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610dd2575f80fd5b5f5b8251811015610e58578160045f858481518110610df457610df3612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055508080600101915050610dd4565b505050565b6009602052805f5260405f205f915054906101000a900460ff1681565b600a5481565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610ed8575f80fd5b5f5b8251811015610f5e578160095f858481518110610efa57610ef9612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055508080600101915050610eda565b505050565b6004602052805f5260405f205f915054906101000a900460ff1681565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614610fd8575f80fd5b5f5b825181101561105e578160055f858481518110610ffa57610ff9612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055508080600101915050610fda565b505050565b600760019054906101000a900460ff1681565b600b5481565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16146110d4575f80fd5b5f5b8251811015611183578160065f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f85848151811061113157611130612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f208190555080806001019150506110d6565b50505050565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16146111e1575f80fd5b5f5b8251811015611267578160085f85848151811061120357611202612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff02191690831515021790555080806001019150506111e3565b505050565b5f60035f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff169050919050565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614611316575f80fd5b80600760016101000a81548160ff02191690831515021790555050565b5f5481565b3373ffffffffffffffffffffffffffffffffffffffff1660015f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1614611390575f80fd5b5f5b8251811015611451578160025f8673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f8584815181106113ed576113ec612cb5565b5b602002602001015173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055508080600101915050611392565b50505050565b7314e136e385c79c1d0548a96bb90e9b4e9845a73f73ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16146114a2575f80fd5b8060015f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505f600b819055505f600a819055505f60075f6101000a81548160ff0219169083151502179055505f600760016101000a81548160ff021916908315150217905550600160045f6e22d473030f116ddee9f6b43ac78ba373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f732626664c2603336e57b271c5c0b26f421741e48173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73111111125421ca6dc452d289314280a0f8842a6573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f736131b5fae19ea4f9d964eac0408e4408b66337b573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73d7f1dd5d49206349cae8b585fcb0ce3d96f1696f73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f731111111254eeb25477b68fb85ed929f73a96058273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73804b526e5bf4349819fe2db65349d0825870f8ee73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73cab2fa2eeab7065b45cbcf6e3936dde2506b4f6c73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73def1c0ded9bec7f1a1670819833240f027b25eff73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f6e9726632680fb29d3f7a9734e3010e273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7319ceead7105607cd444f5ad10dd51356436095a173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73198ef79f1f515f02dfe9e3115ed9fc07183f02fc73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73c4cff4b55c38cfa9bcc03343addcbd4c416f35f973ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f736352a56caadc4f1e25cd6c75970fa768a3304e6473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f731231deb6f5749ef6ce6943a275a1d3e7486f4eae73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f730389879e0156033202c44bf784ac18fc02edee4f73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7322ce84a7f86662b78e49c6ec9e51d60fdde7b70a73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f734752ba5dbc23f44d87826276bf6fd6b1c372ad2473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f736cb442acf35158d5eda88fe602221b67b400be3e73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73663dc15d3c1ac63ff12e45ab68fea3f0a883c25173ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f735d025432bcbe100354b5fb7b1a68d1641e677f6c73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7393aaae79a53759cd164340e4c8766e4db5331cd773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73c9eaae11a1e8708393d05a5198ba619e911a8c3773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73b45a2dda996c32e93b8c47098e90ed0e7ab18e3973ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7389872650fa1a391f58b4e144222bb02e44db7e3b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73bb5e1777a331ed93e07cf043363e48d320eb96c473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f720db803a70511e09da650d4c0506d000010000073ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f733a23f943181408eac424116af7b7790c94cb97a573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73d9acfa6a77c75771a7dd206e8f289b97b3960aee73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73ca8be23830744b208f9cba488b373b189618b9e873ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f733fc91a3afd70395cd496c647d5a6cc9d4b2b7fad73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73ef4fb24ad0916217251f553c0596f8edc630eb6673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f734c4af8dbc524681930a27b2f1af5bcc8062e6fb773ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f735e6bb47d89fea09cf5a75ea7e3fa2e804798eb5573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73fe96910cf84318d1b8a5e2a6962774711467c0be73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73dd6e31a046b828cbbafb939c2a394629aff8bbdc73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73c670ae8b51a508d7328202e94501b1068c3fe95373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f8073ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7357df6092665eb6058de53939612413ff4b09114e73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f7375ab076a00d76478e5fcc21cfd95113802f06d2373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f737a250d5630b4cf539739df2c5dacabf7601b16ef73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f732d455dc159ddd2102d283e6de8441e40b64e676b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f739dda6ef3d919c9bc8885d5560999a3640431e8e673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550600160045f73e7351fd770a37282b91d153ee690b63579d6dd7f73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff02191690831515021790555050565b5f604051905090565b5f80fd5b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f61274d82612724565b9050919050565b61275d81612743565b8114612767575f80fd5b50565b5f8135905061277881612754565b92915050565b5f819050919050565b6127908161277e565b811461279a575f80fd5b50565b5f813590506127ab81612787565b92915050565b5f805f80608085870312156127c9576127c861271c565b5b5f6127d68782880161276a565b94505060206127e78782880161276a565b93505060406127f88782880161276a565b92505060606128098782880161279d565b91505092959194509250565b5f8115159050919050565b61282981612815565b82525050565b5f6020820190506128425f830184612820565b92915050565b5f806040838503121561285e5761285d61271c565b5b5f61286b8582860161279d565b925050602061287c8582860161279d565b9150509250929050565b5f806040838503121561289c5761289b61271c565b5b5f6128a98582860161276a565b92505060206128ba8582860161276a565b9150509250929050565b5f602082840312156128d9576128d861271c565b5b5f6128e68482850161276a565b91505092915050565b6128f88161277e565b82525050565b5f6020820190506129115f8301846128ef565b92915050565b61292081612815565b811461292a575f80fd5b50565b5f8135905061293b81612917565b92915050565b5f602082840312156129565761295561271c565b5b5f6129638482850161292d565b91505092915050565b5f80fd5b5f601f19601f8301169050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b6129b682612970565b810181811067ffffffffffffffff821117156129d5576129d4612980565b5b80604052505050565b5f6129e7612713565b90506129f382826129ad565b919050565b5f67ffffffffffffffff821115612a1257612a11612980565b5b602082029050602081019050919050565b5f80fd5b5f612a39612a34846129f8565b6129de565b90508083825260208201905060208402830185811115612a5c57612a5b612a23565b5b835b81811015612a855780612a71888261276a565b845260208401935050602081019050612a5e565b5050509392505050565b5f82601f830112612aa357612aa261296c565b5b8135612ab3848260208601612a27565b91505092915050565b5f8060408385031215612ad257612ad161271c565b5b5f83013567ffffffffffffffff811115612aef57612aee612720565b5b612afb85828601612a8f565b9250506020612b0c8582860161292d565b9150509250929050565b5f805f60608486031215612b2d57612b2c61271c565b5b5f612b3a8682870161276a565b935050602084013567ffffffffffffffff811115612b5b57612b5a612720565b5b612b6786828701612a8f565b9250506040612b788682870161279d565b9150509250925092565b5f805f60608486031215612b9957612b9861271c565b5b5f612ba68682870161276a565b935050602084013567ffffffffffffffff811115612bc757612bc6612720565b5b612bd386828701612a8f565b9250506040612be48682870161292d565b9150509250925092565b612bf781612743565b82525050565b5f602082019050612c105f830184612bee565b92915050565b5f81519050612c2481612787565b92915050565b5f60208284031215612c3f57612c3e61271c565b5b5f612c4c84828501612c16565b91505092915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b5f612c8c8261277e565b9150612c978361277e565b9250828201905080821115612caf57612cae612c55565b5b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603260045260245ffdfea2646970667358221220aefe0ed304b3ff7020cec4dbc272563d7c3ad0852cd641e610b3aed41d43ca6264736f6c634300081a0033"));
        vm.setArbitraryStorage(wot_tc_i); //?STORAGE1
        vm.store(wot_tc, bytes32(uint256(24440054405305269366569402256811496959409073762505157381672968839269610695612)), bytes32(uint256(uint160(wot_tc_i))));
    }

    function test_wot_isHoneyPot(address to, uint256 value) public {
        address alice = freshAddress();
        vm.startPrank(alice);
        // assume no underflow during `transfer`
        bytes memory cdata = abi.encodeWithSignature("balanceOf(address)", address(this));
        (bool success, bytes memory returnData) = address(wot).call(cdata);
        uint256 balanceSender = abi.decode(returnData, (uint256));
        vm.assume(value <= balanceSender);

        // assume no overflow during `transfer`
        cdata = abi.encodeWithSignature("balanceOf(address)", to);
        (success, returnData) = address(wot).call(cdata);
        uint256 balanceReceiver = abi.decode(returnData, (uint256));
        vm.assume(balanceReceiver <= type(uint256).max - value);

        // clear branchings on `block.number` and `block.coinbase` in `transfer`
        uint256 currentBlockNum = freshUInt256();
        vm.store(wot, bytes32(uint256(9)), bytes32(currentBlockNum));
        vm.assume(currentBlockNum <= block.number);
        vm.assume(block.coinbase != address(0));

        // call transfer
        cdata = abi.encodeWithSignature("transfer(address,uint256)", to, value);
        (success, returnData) = address(wot).call(cdata);
        require(success);
    }

}
