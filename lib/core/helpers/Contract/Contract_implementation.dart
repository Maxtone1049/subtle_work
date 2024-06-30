import 'package:injectable/injectable.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/api/authapi.dart';
import 'package:weverefy/core/helpers/Contract/Contract.dart';
import 'package:weverefy/core/helpers/Model/create_business_account_model_entity/create_business_account_model_entity.dart';
import 'package:weverefy/core/helpers/Model/create_personal_account_model_entity/create_personal_account_model_entity.dart';
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
class AuthContractsImpl implements AuthContracts {
  final _api = locator<AuthApi>();
  @override
  @override
  Future createBusiness(
      CreateBusinessAccountModelEntity createBusinessAccountModelEntity,
      String otpCode) async {
    return await _api.registerBusiness(
        createBusinessAccountModelEntity, otpCode);
  }

  @override
  Future createPersonal(
      CreatePersonalAccountModelEntity createPersonalAccountModelEntity,
      String otpCode) async {
    return await _api.registerPersonal(
        createPersonalAccountModelEntity, otpCode);
  }

  @override
  Future<LoginResponseModel> login(LoginModelEntity loginModelEntity) async {
    return await _api.login(loginModelEntity);
  }

  @override
  Future<SendTokenResponseModel> sendOtp(
      SendTokenModelEntity sendTokenModelEntity) async {
    return await _api.sendOtp(sendTokenModelEntity);
  }

  @override
  Future<SendTokenResponseModel> resendOtp(
      ResendTokenModelEntity resendTokenModelEntity) async {
    return await _api.resendOtp(resendTokenModelEntity);
  }

  @override
  Future<SetTransactionPinResponseModel> setTransactPin(
      SetTransactionPinModelEntity setPinModel, String token) async {
    return await _api.setPin(setPinModel, token);
  }

  @override
  Future<GetProfileResponseModel> getProfile(String token) async {
    return await _api.getDetails(token);
  }

  @override
  Future<GetBvnDetailResponseModel> verifyBvn(String bvnNumber) async {
    return await _api.verifyBankNo(bvnNumber);
  }
}
