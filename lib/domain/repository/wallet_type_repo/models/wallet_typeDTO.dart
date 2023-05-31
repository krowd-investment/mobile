class WalletType {
  String? name;
  String? description;
  String? mode;

  WalletType(
      {
      this.name,
      this.description,
      this.mode});

  WalletType.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    mode = json['mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['mode'] = this.mode;
    return data;
  }
}
