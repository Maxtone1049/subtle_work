// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModelEntity _$LoginModelEntityFromJson(Map<String, dynamic> json) =>
    LoginModelEntity(
      phoneNumber: json['phone_number'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginModelEntityToJson(LoginModelEntity instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'password': instance.password,
    };
