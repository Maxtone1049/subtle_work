import 'package:json_annotation/json_annotation.dart';

import 'details.dart';

part 'get_bvn_detail_response_model.g.dart';

@JsonSerializable()
class GetBvnDetailResponseModel {
  String? msg;
  Details? details;

  GetBvnDetailResponseModel({this.msg, this.details});

  factory GetBvnDetailResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetBvnDetailResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetBvnDetailResponseModelToJson(this);
}
