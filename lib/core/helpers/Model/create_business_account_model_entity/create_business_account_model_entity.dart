import 'package:json_annotation/json_annotation.dart';

part 'create_business_account_model_entity.g.dart';

@JsonSerializable()
class CreateBusinessAccountModelEntity {
  String? email;
  String? firstname;
  String? lastname;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? password;
  String? confirmpassword;
  String? bvn;
  String? address;
  @JsonKey(name: 'biz_type')
  String? bizType;
  @JsonKey(name: 'biz_reg_no')
  String? bizRegNo;
  @JsonKey(name: 'biz_sector')
  String? bizSector;
  @JsonKey(name: 'biz_website')
  String? bizWebsite;
  @JsonKey(name: 'biz_social')
  String? bizSocial;
  @JsonKey(name: 'biz_employee_no')
  String? bizEmployeeNo;
  @JsonKey(name: 'biz_country_op')
  String? bizCountryOp;

  CreateBusinessAccountModelEntity({
    this.email,
    this.firstname,
    this.lastname,
    this.phoneNumber,
    this.password,
    this.confirmpassword,
    this.bvn,
    this.address,
    this.bizType,
    this.bizRegNo,
    this.bizSector,
    this.bizWebsite,
    this.bizSocial,
    this.bizEmployeeNo,
    this.bizCountryOp,
  });

  factory CreateBusinessAccountModelEntity.fromJson(Map<String, dynamic> json) {
    return _$CreateBusinessAccountModelEntityFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateBusinessAccountModelEntityToJson(this);
  }
}
