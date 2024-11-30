import 'package:json_annotation/json_annotation.dart';
part 'register_request_body_model.g.dart';

@JsonSerializable()
class RegisterRequestBodyModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirm;

  RegisterRequestBodyModel(this.name, this.email, this.phone, this.gender,
      this.password, this.passwordConfirm);
  Map<String, dynamic> toJson() => _$RegisterRequestBodyModelToJson(this);
}
