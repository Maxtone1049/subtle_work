// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_personal_account_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePersonalAccountModelEntity _$CreatePersonalAccountModelEntityFromJson(
        Map<String, dynamic> json) =>
    CreatePersonalAccountModelEntity(
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phoneNumber: json['phone_number'] as String?,
      passwrd: json['passwrd'] as String?,
      confirmpasswrd: json['confirmpasswrd'] as String?,
      bvn: json['bvn'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$CreatePersonalAccountModelEntityToJson(
        CreatePersonalAccountModelEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone_number': instance.phoneNumber,
      'passwrd': instance.passwrd,
      'confirmpasswrd': instance.confirmpasswrd,
      'bvn': instance.bvn,
      'address': instance.address,
    };
