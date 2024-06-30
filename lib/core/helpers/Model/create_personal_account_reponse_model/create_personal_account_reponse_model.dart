import 'package:json_annotation/json_annotation.dart';

part 'create_personal_account_reponse_model.g.dart';

@JsonSerializable()
class CreatePersonalAccountReponseModel {
  String? msg;
  String? token;

  CreatePersonalAccountReponseModel({this.msg, this.token});

  factory CreatePersonalAccountReponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$CreatePersonalAccountReponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreatePersonalAccountReponseModelToJson(this);
  }
}
