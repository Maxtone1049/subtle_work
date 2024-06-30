import 'package:json_annotation/json_annotation.dart';

part 'send_token_response_model.g.dart';

@JsonSerializable()
class SendTokenResponseModel {
  String? msg;

  SendTokenResponseModel({this.msg});

  factory SendTokenResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SendTokenResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendTokenResponseModelToJson(this);
}
