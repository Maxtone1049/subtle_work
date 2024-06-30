// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bvn_detail_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBvnDetailResponseModel _$GetBvnDetailResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetBvnDetailResponseModel(
      msg: json['msg'] as String?,
      details: json['details'] == null
          ? null
          : Details.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetBvnDetailResponseModelToJson(
        GetBvnDetailResponseModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'details': instance.details,
    };
