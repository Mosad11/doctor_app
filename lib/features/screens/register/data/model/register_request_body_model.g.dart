// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBodyModel _$RegisterRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRequestBodyModel(
      json['name'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['gender'] as String,
      json['password'] as String,
      json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RegisterRequestBodyModelToJson(
        RegisterRequestBodyModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirm,
    };
