// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileModelEntity _$UpdateProfileModelEntityFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileModelEntity(
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phoneNumber: json['phone_number'] as String?,
      password: json['password'] as String?,
      confirmpassword: json['confirmpassword'] as String?,
      bvn: json['bvn'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$UpdateProfileModelEntityToJson(
        UpdateProfileModelEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'confirmpassword': instance.confirmpassword,
      'bvn': instance.bvn,
      'address': instance.address,
    };
