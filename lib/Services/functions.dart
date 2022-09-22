import 'package:flutter/services.dart';
import '../Widgets/constants.dart';
import 'package:web3dart/web3dart.dart';

Future<DeployedContract> loadContract() async {
  String abi = await rootBundle.loadString('assets/abi.json');
  String contractAddress = contractAddress1;
  final contract = DeployedContract(ContractAbi.fromJson(abi, 'Startup'),
      EthereumAddress.fromHex(contractAddress));
  return contract;
}

Future<String> callFunction(String funcname, List<dynamic> args,
    Web3Client ethClient, String privateKey) async {
  EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
  DeployedContract contract = await loadContract();
  final ethFunction = contract.function(funcname);
  final result = await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: ethFunction,
        parameters: args,
      ),
      chainId: null,
      fetchChainIdFromNetworkId: true);
  return result;
}

/*Future<String> addIdea(int pnum, String teamname, String description,
    Web3Client ethClient) async {}

Future<String> getIdea(String teamname, Web3Client ethClient) async {
  var response = await callFunction(
    "getIdea",
    [teamname],
    ethClient,
  );
  print("data fetched successfully");
  return response;
}*/
