import 'package:json_annotation/json_annotation.dart';

part 'update_profile_model_entity.g.dart';

@JsonSerializable()
class UpdateProfileModelEntity {
  String? email;
  String? firstname;
  String? lastname;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? password;
  String? confirmpassword;
  String? bvn;
  String? address;

  UpdateProfileModelEntity({
    this.email,
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.password,
    this.confirmpassword,
    this.bvn,
    this.address,
  });

  factory UpdateProfileModelEntity.fromJson(Map<String, dynamic> json) {
    return _$UpdateProfileModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpdateProfileModelEntityToJson(this);
}
