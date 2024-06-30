import 'package:json_annotation/json_annotation.dart';

part 'create_personal_account_model_entity.g.dart';

@JsonSerializable()
class CreatePersonalAccountModelEntity {
  String? email;
  String? firstname;
  String? lastname;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? passwrd;
  String? confirmpasswrd;
  String? bvn;
  String? address;

  CreatePersonalAccountModelEntity({
    this.email,
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.passwrd,
    this.confirmpasswrd,
    this.bvn,
    this.address,
  });

  factory CreatePersonalAccountModelEntity.fromJson(Map<String, dynamic> json) {
    return _$CreatePersonalAccountModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreatePersonalAccountModelEntityToJson(this);
  }
}
