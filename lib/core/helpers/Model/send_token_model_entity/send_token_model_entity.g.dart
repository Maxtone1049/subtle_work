// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_token_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendTokenModelEntity _$SendTokenModelEntityFromJson(
        Map<String, dynamic> json) =>
    SendTokenModelEntity(
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$SendTokenModelEntityToJson(
        SendTokenModelEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
