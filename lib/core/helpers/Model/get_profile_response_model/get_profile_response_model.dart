import 'package:json_annotation/json_annotation.dart';

part 'get_profile_response_model.g.dart';

@JsonSerializable()
class GetProfileResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? email;
  String? firstname;
  String? lastname;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'account_status')
  String? accountStatus;
  bool? isEmailVerified;
  String? address;
  @JsonKey(name: 'account_type')
  String? accountType;
  String? kyc;
  DateTime? lastLogin;
  String? pta;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  GetProfileResponseModel({
    this.id,
    this.email,
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.accountStatus,
    this.isEmailVerified,
    this.address,
    this.accountType,
    this.kyc,
    this.lastLogin,
    this.pta,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory GetProfileResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetProfileResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetProfileResponseModelToJson(this);
}
