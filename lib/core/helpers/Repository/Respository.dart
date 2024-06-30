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

abstract class AuthRepo {
  Future createBusiness(
      CreateBusinessAccountModelEntity createBusinessAccountModelEntity,
      String otpCode);
  Future createPersonal(
      CreatePersonalAccountModelEntity createPersonalAccountModelEntity,
      String otpCode);
  Future<SendTokenResponseModel> sendOtp(
      SendTokenModelEntity sendTokenModelEntity);
  Future<SendTokenResponseModel> resendOtp(
      ResendTokenModelEntity resendTokenModelEntity);
  Future<LoginResponseModel> login(LoginModelEntity loginModelEntity);
  Future<GetProfileResponseModel> getProfile(String token);
  Future<GetBvnDetailResponseModel> verifyBvn(String bvnNumber);
  Future<SetTransactionPinResponseModel> setTransactPin(
      SetTransactionPinModelEntity setPinModel, String token);
}
