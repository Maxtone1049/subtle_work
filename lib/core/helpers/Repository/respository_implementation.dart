import 'package:injectable/injectable.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/helpers/Contract/Contract_implementation.dart';
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
import 'package:weverefy/core/helpers/Repository/Respository.dart';

@lazySingleton
class AuthRepoImpl implements AuthRepo {
  final _session = locator<SharedPreferencesService>();
  final _contract = locator<AuthContractsImpl>();

  @override
  Future createBusiness(
      CreateBusinessAccountModelEntity createBusinessAccountModelEntity,
      String otpCode) async {
    final biz = await _contract.createBusiness(
        createBusinessAccountModelEntity, otpCode);
    return biz;
  }

  @override
  Future<CreatePersonalAccountReponseModel> createPersonal(
      CreatePersonalAccountModelEntity createPersonalAccountModelEntity,
      String otpCode) async {
    final personal = await _contract.createPersonal(
        createPersonalAccountModelEntity, otpCode);
    return personal;
  }

  @override
  Future<SendTokenResponseModel> resendOtp(
      ResendTokenModelEntity resendTokenModelEntity) async {
    final otpSend = await _contract.resendOtp(resendTokenModelEntity);
    return otpSend;
  }

  @override
  Future<SendTokenResponseModel> sendOtp(
      SendTokenModelEntity sendTokenModelEntity) async {
    final sendOtp = await _contract.sendOtp(sendTokenModelEntity);
    return sendOtp;
  }

  @override
  Future<LoginResponseModel> login(LoginModelEntity loginModelEntity) async {
    final response = await _contract.login(loginModelEntity);
    _session.isLoggedIn = true;
    _chache(response);
    return response;
  }

  void _chache(data) {
    if (data != null) {
      _session.authToken = data.token!;
      // _session.usersData = data.user.toJson();
    }
  }

  @override
  Future<SetTransactionPinResponseModel> setTransactPin(
      SetTransactionPinModelEntity setPinModel, String token) async {
    final pinSet = await _contract.setTransactPin(setPinModel, token);
    return pinSet;
  }

  @override
  Future<GetProfileResponseModel> getProfile(String token) async {
    final response = await _contract.getProfile(token);
    return response;
  }

  @override
  Future<GetBvnDetailResponseModel> verifyBvn(String bvnNumber) async {
    final verify = await _contract.verifyBvn(bvnNumber);
    return verify;
  }
}
