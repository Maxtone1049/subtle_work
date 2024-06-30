import 'package:json_annotation/json_annotation.dart';

part 'send_token_model_entity.g.dart';

@JsonSerializable()
class SendTokenModelEntity {
  String? email;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;

  SendTokenModelEntity({this.email, this.phoneNumber});

  factory SendTokenModelEntity.fromJson(Map<String, dynamic> json) {
    return _$SendTokenModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SendTokenModelEntityToJson(this);
}
