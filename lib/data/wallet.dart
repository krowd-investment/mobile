import 'package:krowd_invesment_footer/modules/repository/wallet_type_repo/models/wallet_type_dto.dart';

import '../modules/repository/wallet_repo/models/wallet_dto.dart';

List<WalletDTO> walletList = [
  WalletDTO(
      symbol: walletType.elementAt(0),
      name: 'Investment',
      price: '10.000.000,0 VND',
      change: '2.50(+1.60%)',
      color: '#4c956c',
      iconUrl:
          'https://th.bing.com/th/id/R.dca8d5d231ea0afea16784f3d275f566?rik=%2bqMSVIDyJFA88w&riu=http%3a%2f%2ficon-icons.com%2ficons2%2f474%2fPNG%2f512%2fwallet_46876.png&ehk=Xsh4KxbjPUW51rMjXe9Gr0uG5qsONv8e2HtBVJPYcD8%3d&risl=&pid=ImgRaw&r=0'),
  WalletDTO(
      symbol: walletType.elementAt(1),
      name: 'Collection',
      price: '500.000,0 VND',
      change: '2.50(+1.60%)',
      color: '#3a86ff',
      iconUrl:
          'https://cdn1.iconfinder.com/data/icons/flat-business-finance/256/wallet_money_finance_business-512.png'),
  WalletDTO(
      symbol: walletType.elementAt(2),
      name: 'Microsoft',
      price: '1.000.000,0 VND',
      change: '2.20(+3.60%)',
      color: '#00a6fb',
      iconUrl:
          'https://cdn2.iconfinder.com/data/icons/green-business-icons-1/1500/money_notes_card_wallet_billfold_holder_business_finance-512.png'),
];

List<WalletType> walletType = [
  WalletType(name: 'Ví đầu tư', description: 'Vi đầu tư', mode: 'Both'),
  WalletType(name: 'Ví thu tiền', description: 'Vi thu tiền', mode: 'Both'),
  WalletType(name: 'Ví dich vụ', description: 'Vi dịch vụ', mode: 'Both')
];
