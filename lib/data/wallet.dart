import 'package:krowd_invesment_footer/domain/repository/wallet_type_repo/models/wallet_typeDTO.dart';

import '../domain/repository/wallet_repo/models/walletDTO.dart';

List<WalletDTO> walletList = [
  WalletDTO(
      symbol: walletType.elementAt(0),
      name: 'Investment',
      price: '\$80.55',
      change: '2.50(+1.60%)',
      color: '#4c956c',
      iconUrl:
          'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/800px-Starbucks_Corporation_Logo_2011.svg.png'),
  WalletDTO(
      symbol: walletType.elementAt(1),
      name: 'Collection',
      price: '\$110.14',
      change: '4.50(+6.60%)',
      color: '#3a86ff',
      iconUrl:
          'https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png'),
  WalletDTO(
      symbol: walletType.elementAt(2),
      name: 'Microsoft',
      price: '\$175.66',
      change: '2.20(+3.60%)',
      color: '#00a6fb',
      iconUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/800px-Microsoft_logo.svg.png'),
];

List<WalletType> walletType = [
  WalletType(name: 'Ví đầu tư', description: 'Vi đầu tư', mode: 'Both'),
  WalletType(name: 'Ví thu tiền', description: 'Vi thu tiền', mode: 'Both'),
  WalletType(name: 'Ví tạm thời', description: 'Vi tạm thời', mode: 'Both')
];
