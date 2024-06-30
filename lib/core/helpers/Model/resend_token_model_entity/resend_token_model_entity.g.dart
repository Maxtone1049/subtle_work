// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_token_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendTokenModelEntity _$ResendTokenModelEntityFromJson(
        Map<String, dynamic> json) =>
    ResendTokenModelEntity(
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$ResendTokenModelEntityToJson(
        ResendTokenModelEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
