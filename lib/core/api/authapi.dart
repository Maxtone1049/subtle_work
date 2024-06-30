import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.logger.dart';
import 'package:weverefy/core/Network/Network_Service.dart';
import 'package:weverefy/core/Network/UrlPath.dart';
import 'package:weverefy/core/helpers/Model/create_business_account_model_entity/create_business_account_model_entity.dart';
import 'package:weverefy/core/helpers/Model/create_personal_account_model_entity/create_personal_account_model_entity.dart';
import 'package:weverefy/core/helpers/Model/create_personal_account_reponse_model/create_personal_account_reponse_model.dart';
import 'package:weverefy/core/helpers/Model/get_bvn_detail_response_model/get_bvn_detail_response_model.dart';
import 'package:weverefy/core/helpers/Model/get_profile_response_model/get_profile_response_model.dart';
import 'package:weverefy/core/helpers/Model/login_model_entity/login_model_entity.dart';
import 'package:weverefy/core/helpers/Model/login_response_model/login_response_model.dart';
import 'package:weverefy/core/helpers/Model/resend_token_model_entity/resend_token_model_entity.dart';
import 'package:weverefy/core/helpers/Model/send_token_model_entity/send_token_model_entity.dart';
import 'package:weverefy/core/helpers/Model/send_token_response_model/send_token_response_model.dart';
import 'package:weverefy/core/helpers/Model/set_transaction_pin_model_entity/set_transaction_pin_model_entity.dart';
import 'package:weverefy/core/helpers/Model/set_transaction_pin_response_model/set_transaction_pin_response_model.dart';

@lazySingleton
class AuthApi {
  final logger = getLogger('AuthApi');
  final _service = locator<NetworkService>();
  final _identify = locator<IdentityService>();

  Future<SendTokenResponseModel> sendOtp(
      SendTokenModelEntity sendTokenModelEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.sendToken, RequestMethod.post,
          data: sendTokenModelEntity.toJson());
      return SendTokenResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<SendTokenResponseModel> resendOtp(
      ResendTokenModelEntity resendTokenModelEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.resendToken, RequestMethod.post,
          data: resendTokenModelEntity.toJson());
      return SendTokenResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<SetTransactionPinResponseModel> setPin(
      SetTransactionPinModelEntity createPin, String token) async {
    try {
      final res = await _service.call(
          "${UrlConfig.setPin}/$token", RequestMethod.post,
          data: createPin.toJson());
      return SetTransactionPinResponseModel.fromJson(res.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<CreatePersonalAccountReponseModel> registerPersonal(
      CreatePersonalAccountModelEntity createPersonal, String otpCode) async {
    try {
      final res = await _service.call(
          "${UrlConfig.personalAccount}/$otpCode", RequestMethod.post,
          data: createPersonal.toJson());
      return CreatePersonalAccountReponseModel.fromJson(res.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<CreatePersonalAccountReponseModel> registerBusiness(
      CreateBusinessAccountModelEntity createBusiness, String otpCode) async {
    try {
      final res = await _service.call(
          "${UrlConfig.businessAccount}/$otpCode", RequestMethod.post,
          data: createBusiness.toJson());
      return CreatePersonalAccountReponseModel.fromJson(res.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<LoginResponseModel> login(LoginModelEntity loginModelEntity) async {
    try {
      final res = await _service.call(UrlConfig.login, RequestMethod.post,
          data: loginModelEntity.toJson());
      return LoginResponseModel.fromJson(res.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<GetProfileResponseModel> getDetails(String token) async {
    try {
      final res = await _service.call(
        "${UrlConfig.account}/$token",
        RequestMethod.get,
      );
      return GetProfileResponseModel.fromJson(res.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  Future<GetBvnDetailResponseModel> verifyBankNo(String bvnNo) async {
    // var headers = {'Authorization': 'Bearer hJ73nP9!Qz6@rK0&Lu1eB4$Wf8xV2Yc'};
    var headers = {'Authorization': 'Bearer hJ73nP9!Qz6@rK0&Lu1eB4\$Wf8xV2Yc'};
    try {
      final response = await _service.call(
          "https://weverefy-identity.onrender.com/${UrlConfig.bvnVerify}/1111111111",
          RequestMethod.post,
          options: Options(
            headers: headers,
          ));
      print(response.data);
      return GetBvnDetailResponseModel.fromJson(response.data);
    } catch (e) {
      logger.d(e);
      rethrow;
    }
  }
}
