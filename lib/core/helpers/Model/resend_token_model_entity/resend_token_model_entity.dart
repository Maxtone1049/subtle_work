import 'package:json_annotation/json_annotation.dart';

part 'resend_token_model_entity.g.dart';

@JsonSerializable()
class ResendTokenModelEntity {
  String? email;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;

  ResendTokenModelEntity({this.email, this.phoneNumber});

  factory ResendTokenModelEntity.fromJson(Map<String, dynamic> json) {
    return _$ResendTokenModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResendTokenModelEntityToJson(this);
}
