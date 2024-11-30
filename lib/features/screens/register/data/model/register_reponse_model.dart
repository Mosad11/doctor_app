import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_reponse_model.g.dart';

@JsonSerializable()
class RegisterReponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;
  RegisterReponseModel({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory RegisterReponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterReponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? password;
  UserData({
    this.token,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
