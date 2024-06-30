import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/AppUtils/app_ui_components.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.logger.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
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
import 'package:weverefy/core/helpers/Repository/respository_implementation.dart';
import 'package:weverefy/core/router/page_router.dart';

class AuthViewModel extends BaseViewModel {
  AuthViewModel({this.context});
  final BuildContext? context;
  final logger = getLogger('AuthViewModel');
  final repositoryImply = AuthRepoImpl();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> numberKey = GlobalKey<FormState>();
  GlobalKey<FormState> numberverify = GlobalKey<FormState>();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  bool _passwordVisibility = true;
  bool get passwordVisibility => _passwordVisibility;
  bool _confirmPasswordVisibility = true;
  bool get confirmPasswordVisibility => _confirmPasswordVisibility;

  bool _verifyingUsername = false;
  bool get verifyingUsername => _verifyingUsername;

  bool? _usernameAvailable;
  bool? get usernameAvailable => _usernameAvailable;

  String? _error;
  String? get merror => _error;
  void togglePasswordVisibility() {
    _passwordVisibility = !_passwordVisibility;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _confirmPasswordVisibility = !_confirmPasswordVisibility;
    notifyListeners();
  }

  bool _acceptedTerms = false;
  bool get acceptedTerms => _acceptedTerms;
  void toggleAcceptedTermsVisibility() {
    _acceptedTerms = !_acceptedTerms;
    notifyListeners();
  }

  bool? _isLoading;
  bool? get isLoading => _isLoading;

  final _session = locator<SharedPreferencesService>();
  SendTokenResponseModel? _sendToken;
  SendTokenResponseModel? get sendToken => _sendToken;

  Future<void> sendCode(SendTokenModelEntity sendCode, String otpType) async {
    try {
      _isLoading = true;
      _sendToken = await runBusyFuture(
        repositoryImply.sendOtp(sendCode),
        throwException: true,
      );
      _isLoading = false;
      logger.d(_sendToken!.toJson());
      if (_sendToken!.msg!.isNotEmpty) {
        PageRouter.pushNamed(Routes.verifyOtp,
            args: VerifyOtpArguments(
              otpType: otpType,
              number: sendCode.phoneNumber!,
            ));
      }
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e.toString());
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

  Future<void> resendCode(ResendTokenModelEntity sendCode) async {
    try {
      _isLoading = true;
      _sendToken = await runBusyFuture(
        repositoryImply.resendOtp(sendCode),
        throwException: true,
      );
      _isLoading = false;
      if (_sendToken!.msg!.isNotEmpty) {
        // PageRouter.pushNamed(Routes.verifyOtp,
        //     args: VerifyOtpArguments(otpType: otpType));
        AppUiComponents.triggerNotification("Code Resent", error: false);
      }
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e.toString());
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

  GetBvnDetailResponseModel? _getBvnInfo;
  GetBvnDetailResponseModel? get getBvnInfo => _getBvnInfo;
  // String? lName, fname, gender, dob, mobile;
  String? _lName;
  String? get lName => _lName;
  String? _fName;
  String? get fName => _fName;
  String? _mobile;
  String? get mobile => _mobile;
  String? _gender;
  String? get gender => _gender;
  String? _dob;
  String? get dob => _dob;
  Future<void> verifyBvn(String bvnNum) async {
    try {
      _isLoading = true;
      _getBvnInfo = await runBusyFuture(
        repositoryImply.verifyBvn(bvnNum),
        throwException: true,
      );
      _isLoading = false;
      if (_getBvnInfo!.msg!.isNotEmpty) {
        _fName = _getBvnInfo?.details?.firstName ??'N/A';
        _lName = _getBvnInfo?.details?.lastName ??'N/A';
        _mobile = _getBvnInfo?.details?.mobile ??'N/A';
        _gender = _getBvnInfo?.details?.gender ??'N/A';
        _dob = _getBvnInfo?.details?.dateOfBirth ??'N/A';
        // PageRouter.pushNamed(Routes.verifyOtp,
        //     args: VerifyOtpArguments(otpType: otpType));
        AppUiComponents.triggerNotification("BVN Verified", error: false);
      }
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e.toString());
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
  }

  SetTransactionPinResponseModel? _setPin;
  SetTransactionPinResponseModel? get setPin => _setPin;
  Future<void> setTransPin(SetTransactionPinModelEntity setPinCode) async {
    try {
      _isLoading = true;
      _setPin = await runBusyFuture(
        repositoryImply.setTransactPin(setPinCode, token!),
        throwException: true,
      );
      _isLoading = false;
      if (_setPin!.msg!.isNotEmpty) {
        // PageRouter.pushNamed(Routes.verifyOtp,
        //     args: VerifyOtpArguments(otpType: otpType));
        AppUiComponents.triggerNotification("Transaction Pin Set",
            error: false);
      }
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e.toString());
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

  Future<void> createBusinessAccount(
      CreateBusinessAccountModelEntity createBusiness, String otpCode) async {
    try {
      _isLoading = true;
      final response = await runBusyFuture(
          repositoryImply.createBusiness(createBusiness, otpCode),
          throwException: true);
      _isLoading = false;
      AppUiComponents.triggerNotification("Account Created", error: false);
      notifyListeners();
      return response;
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

  CreatePersonalAccountReponseModel? _accountResponse;
  CreatePersonalAccountReponseModel? get accountResponse => _accountResponse;
  String? _token;
  String? get token => _token;
  Future<void> createPersonalAccount(
      CreatePersonalAccountModelEntity createPersonal, String otpCode) async {
    try {
      _isLoading = true;
      _accountResponse = await runBusyFuture(
          repositoryImply.createPersonal(createPersonal, otpCode),
          throwException: true);
      _isLoading = false;
      if (_accountResponse!.token!.isNotEmpty) {
        _token = _accountResponse?.token.toString();
        AppUiComponents.triggerNotification("Account Created", error: false);
        PageRouter.pushNamed(Routes.createPin);
      } else {
        AppUiComponents.triggerNotification(
            "Could not Proceed, Please Check and Try Again",
            error: true);
      }
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

// Future<void> createPin(SetTransactionPinModelEntity setPin){}

  LoginResponseModel? _loginResponseModel;
  LoginResponseModel? get loginResponseModel => _loginResponseModel;

  Future<void> loginUser(LoginModelEntity loginModel, context) async {
    try {
      _isLoading = true;
      _loginResponseModel = await runBusyFuture(
          repositoryImply.login(loginModel),
          throwException: true);
      SharedPreferencesService.instance.isLoggedIn = true;
      _session.authToken = _loginResponseModel!.token!;
      _isLoading = false;
      notifyListeners();
      await PageRouter.pushReplacement(Routes.dashboardView);
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
    }
    notifyListeners();
  }
}
