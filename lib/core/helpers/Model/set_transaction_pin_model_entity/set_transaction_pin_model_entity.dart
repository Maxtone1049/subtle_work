import 'package:json_annotation/json_annotation.dart';

part 'set_transaction_pin_model_entity.g.dart';

@JsonSerializable()
class SetTransactionPinModelEntity {
  String? pin;

  SetTransactionPinModelEntity({this.pin});

  factory SetTransactionPinModelEntity.fromJson(Map<String, dynamic> json) {
    return _$SetTransactionPinModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SetTransactionPinModelEntityToJson(this);
}
