import 'package:json_annotation/json_annotation.dart';

part 'set_transaction_pin_response_model.g.dart';

@JsonSerializable()
class SetTransactionPinResponseModel {
  String? msg;

  SetTransactionPinResponseModel({this.msg});

  factory SetTransactionPinResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SetTransactionPinResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SetTransactionPinResponseModelToJson(this);
  }
}
