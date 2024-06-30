// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_business_account_model_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBusinessAccountModelEntity _$CreateBusinessAccountModelEntityFromJson(
        Map<String, dynamic> json) =>
    CreateBusinessAccountModelEntity(
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phoneNumber: json['phone_number'] as String?,
      password: json['password'] as String?,
      confirmpassword: json['confirmpassword'] as String?,
      bvn: json['bvn'] as String?,
      address: json['address'] as String?,
      bizType: json['biz_type'] as String?,
      bizRegNo: json['biz_reg_no'] as String?,
      bizSector: json['biz_sector'] as String?,
      bizWebsite: json['biz_website'] as String?,
      bizSocial: json['biz_social'] as String?,
      bizEmployeeNo: json['biz_employee_no'] as String?,
      bizCountryOp: json['biz_country_op'] as String?,
    );

Map<String, dynamic> _$CreateBusinessAccountModelEntityToJson(
        CreateBusinessAccountModelEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'confirmpassword': instance.confirmpassword,
      'bvn': instance.bvn,
      'address': instance.address,
      'biz_type': instance.bizType,
      'biz_reg_no': instance.bizRegNo,
      'biz_sector': instance.bizSector,
      'biz_website': instance.bizWebsite,
      'biz_social': instance.bizSocial,
      'biz_employee_no': instance.bizEmployeeNo,
      'biz_country_op': instance.bizCountryOp,
    };
