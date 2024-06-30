// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileResponseModel _$GetProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetProfileResponseModel(
      id: json['_id'] as String?,
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phoneNumber: json['phone_number'] as String?,
      accountStatus: json['account_status'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      address: json['address'] as String?,
      accountType: json['account_type'] as String?,
      kyc: json['kyc'] as String?,
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      pta: json['pta'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetProfileResponseModelToJson(
        GetProfileResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone_number': instance.phoneNumber,
      'account_status': instance.accountStatus,
      'isEmailVerified': instance.isEmailVerified,
      'address': instance.address,
      'account_type': instance.accountType,
      'kyc': instance.kyc,
      'lastLogin': instance.lastLogin?.toIso8601String(),
      'pta': instance.pta,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
