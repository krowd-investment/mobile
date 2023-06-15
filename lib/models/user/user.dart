class User {
  int? userId;
  int? roleId;
  String? fullName;
  String? email;
  String? phone;
  String? avatar;
  String? idCard;
  String? gender;
  String? birthdate;
  String? taxIndentification;
  String? address;
  String? bankName;
  String? bankAccount;
  String? createdAt;
  bool? status;
  bool? enabled;

  User(
      {this.userId,
      this.roleId,
      this.fullName,
      this.email,
      this.phone,
      this.avatar,
      this.idCard,
      this.gender,
      this.birthdate,
      this.taxIndentification,
      this.address,
      this.bankName,
      this.bankAccount,
      this.createdAt,
      this.status,
      this.enabled});

  User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    roleId = json['role_id'];
    fullName = json['full_name'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    idCard = json['id_card'];
    gender = json['gender'];
    birthdate = json['birthdate'];
    taxIndentification = json['tax_indentification'];
    address = json['address'];
    bankName = json['bank_name'];
    bankAccount = json['bank_account'];
    createdAt = json['created_at'];
    status = json['status'];
    enabled = json['enabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['role_id'] = roleId;
    data['full_name'] = fullName;
    data['email'] = email;
    data['phone'] = phone;
    data['avatar'] = avatar;
    data['id_card'] = idCard;
    data['gender'] = gender;
    data['birthdate'] = birthdate;
    data['tax_indentification'] = taxIndentification;
    data['address'] = address;
    data['bank_name'] = bankName;
    data['bank_account'] = bankAccount;
    data['created_at'] = createdAt;
    data['status'] = status;
    data['enabled'] = enabled;
    return data;
  }
}
