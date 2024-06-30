import 'package:json_annotation/json_annotation.dart';

part 'details.g.dart';

@JsonSerializable()
class Details {
  String? firstName;
  String? lastName;
  String? image;
  String? mobile;
  String? gender;
  String? dateOfBirth;

  Details({
    this.firstName,
    this.lastName,
    this.image,
    this.mobile,
    this.gender,
    this.dateOfBirth,
  });

  factory Details.fromJson(Map<String, dynamic> json) {
    return _$DetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}
