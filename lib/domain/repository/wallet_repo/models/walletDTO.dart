import 'package:krowd_invesment_footer/domain/repository/wallet_type_repo/models/wallet_typeDTO.dart';

class WalletDTO {
  String? iconUrl;
  WalletType? symbol;
  String? name;
  String? price;
  String? change;
  String? color;

  WalletDTO(
      {this.iconUrl,
      this.symbol,
      this.name,
      this.price,
      this.change,
      this.color});

  WalletDTO.fromJson(Map<String, dynamic> json) {
    iconUrl = json['iconUrl'];
    symbol = json['symbol'];
    name = json['name'];
    price = json['price'];
    change = json['change'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconUrl'] = this.iconUrl;
    data['symbol'] = this.symbol;
    data['name'] = this.name;
    data['price'] = this.price;
    data['change'] = this.change;
    data['color'] = this.color;
    return data;
  }
}
