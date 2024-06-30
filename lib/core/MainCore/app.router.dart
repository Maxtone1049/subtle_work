// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i42;
import 'package:flutter/material.dart' as _i41;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i43;
import 'package:weverefy/Features/Auth/business-type/business/docsverity.dart'
    as _i35;
import 'package:weverefy/Features/Auth/business-type/business/form_three.dart'
    as _i36;
import 'package:weverefy/Features/Auth/business-type/business/form_two.dart'
    as _i37;
import 'package:weverefy/Features/Auth/business-type/business/phoneInput.dart'
    as _i38;
import 'package:weverefy/Features/Auth/Login/login_view.dart' as _i5;
import 'package:weverefy/Features/Auth/Otp/verify_otp.dart' as _i39;
import 'package:weverefy/Features/Auth/personal/biodataform_view.dart' as _i31;
import 'package:weverefy/Features/Auth/personal/complete_view.dart' as _i34;
import 'package:weverefy/Features/Auth/personal/Create_Pin/confirmpin.dart'
    as _i32;
import 'package:weverefy/Features/Auth/personal/Create_Pin/createpin.dart'
    as _i33;
import 'package:weverefy/Features/Auth/personal/proceed_view.dart' as _i40;
import 'package:weverefy/Features/Auth/personal/signup_personal_view.dart'
    as _i6;
import 'package:weverefy/Features/dashboard/dashboard_view.dart' as _i4;
import 'package:weverefy/Features/dashboard/disputes/disputes_view.dart'
    as _i27;
import 'package:weverefy/Features/dashboard/general/succes_screen.dart' as _i29;
import 'package:weverefy/Features/dashboard/general/transact_for_verify.dart'
    as _i30;
import 'package:weverefy/Features/dashboard/history/history_view.dart' as _i10;
import 'package:weverefy/Features/dashboard/history/views/credit_transaction_details.dart'
    as _i13;
import 'package:weverefy/Features/dashboard/history/views/debit_transaction_details.dart'
    as _i14;
import 'package:weverefy/Features/dashboard/home/home_view.dart' as _i8;
import 'package:weverefy/Features/dashboard/home/Views/add_money.dart' as _i11;
import 'package:weverefy/Features/dashboard/home/Views/success_screen.dart'
    as _i12;
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_for_goods.dart'
    as _i15;
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_agreementone_view.dart'
    as _i16;
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_preview_agreement.dart'
    as _i17;
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_transaction_preview.dart'
    as _i18;
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_for_services.dart'
    as _i19;
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_agreementone_view.dart'
    as _i20;
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_preview_agreement.dart'
    as _i21;
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_transaction_preview.dart'
    as _i22;
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/agreementone_view.dart'
    as _i25;
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/individual_for_goods.dart'
    as _i23;
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/preview_agreement.dart'
    as _i24;
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/transaction_preview.dart'
    as _i26;
import 'package:weverefy/Features/dashboard/profile/profile_view.dart' as _i28;
import 'package:weverefy/Features/dashboard/rewards/reward_view.dart' as _i9;
import 'package:weverefy/Features/onboarding/onboarding.dart' as _i3;
import 'package:weverefy/Features/onboarding/select_account.dart' as _i7;
import 'package:weverefy/Features/onboarding/splash_view.dart' as _i2;

class Routes {
  static const splashScreen = '/splash-screen';

  static const onboardingView = '/';

  static const dashboardView = '/dashboard-view';

  static const loginView = '/login-view';

  static const personalSignUp = '/personal-sign-up';

  static const selectAccount = '/select-account';

  static const homeView = '/home-view';

  static const rewardView = '/reward-view';

  static const historyView = '/history-view';

  static const addMoney = '/add-money';

  static const successView = '/success-view';

  static const creditTransactionDetail = '/credit-transaction-detail';

  static const transactionDetailView = '/transaction-detail-view';

  static const payCompanyGoods = '/pay-company-goods';

  static const companyGoodsAgreementView = '/company-goods-agreement-view';

  static const companyGoodPreviewAgreementView =
      '/company-good-preview-agreement-view';

  static const companyGoodTransactionPreview =
      '/company-good-transaction-preview';

  static const payCompanyService = '/pay-company-service';

  static const companyServiceAgreement = '/company-service-agreement';

  static const companyServicePreviewAgreement =
      '/company-service-preview-agreement';

  static const companyServiceTransactionView =
      '/company-service-transaction-view';

  static const payIndividualGoods = '/pay-individual-goods';

  static const previewAgreementView = '/preview-agreement-view';

  static const agreementOneView = '/agreement-one-view';

  static const transactionPreview = '/transaction-preview';

  static const disputesView = '/disputes-view';

  static const profileView = '/profile-view';

  static const transactionSuccessView = '/transaction-success-view';

  static const pinVerify = '/pin-verify';

  static const bioDataForm = '/bio-data-form';

  static const confirmPin = '/confirm-pin';

  static const createPin = '/create-pin';

  static const completeVerify = '/complete-verify';

  static const documentUpload = '/document-upload';

  static const businessDescription = '/business-description';

  static const businesType = '/busines-type';

  static const numberVerify = '/number-verify';

  static const verifyOtp = '/verify-otp';

  static const proceedView = '/proceed-view';

  static const all = <String>{
    splashScreen,
    onboardingView,
    dashboardView,
    loginView,
    personalSignUp,
    selectAccount,
    homeView,
    rewardView,
    historyView,
    addMoney,
    successView,
    creditTransactionDetail,
    transactionDetailView,
    payCompanyGoods,
    companyGoodsAgreementView,
    companyGoodPreviewAgreementView,
    companyGoodTransactionPreview,
    payCompanyService,
    companyServiceAgreement,
    companyServicePreviewAgreement,
    companyServiceTransactionView,
    payIndividualGoods,
    previewAgreementView,
    agreementOneView,
    transactionPreview,
    disputesView,
    profileView,
    transactionSuccessView,
    pinVerify,
    bioDataForm,
    confirmPin,
    createPin,
    completeVerify,
    documentUpload,
    businessDescription,
    businesType,
    numberVerify,
    verifyOtp,
    proceedView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashScreen,
      page: _i2.SplashScreen,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i3.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i4.DashboardView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i5.LoginView,
    ),
    _i1.RouteDef(
      Routes.personalSignUp,
      page: _i6.PersonalSignUp,
    ),
    _i1.RouteDef(
      Routes.selectAccount,
      page: _i7.SelectAccount,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i8.HomeView,
    ),
    _i1.RouteDef(
      Routes.rewardView,
      page: _i9.RewardView,
    ),
    _i1.RouteDef(
      Routes.historyView,
      page: _i10.HistoryView,
    ),
    _i1.RouteDef(
      Routes.addMoney,
      page: _i11.AddMoney,
    ),
    _i1.RouteDef(
      Routes.successView,
      page: _i12.SuccessView,
    ),
    _i1.RouteDef(
      Routes.creditTransactionDetail,
      page: _i13.CreditTransactionDetail,
    ),
    _i1.RouteDef(
      Routes.transactionDetailView,
      page: _i14.TransactionDetailView,
    ),
    _i1.RouteDef(
      Routes.payCompanyGoods,
      page: _i15.PayCompanyGoods,
    ),
    _i1.RouteDef(
      Routes.companyGoodsAgreementView,
      page: _i16.CompanyGoodsAgreementView,
    ),
    _i1.RouteDef(
      Routes.companyGoodPreviewAgreementView,
      page: _i17.CompanyGoodPreviewAgreementView,
    ),
    _i1.RouteDef(
      Routes.companyGoodTransactionPreview,
      page: _i18.CompanyGoodTransactionPreview,
    ),
    _i1.RouteDef(
      Routes.payCompanyService,
      page: _i19.PayCompanyService,
    ),
    _i1.RouteDef(
      Routes.companyServiceAgreement,
      page: _i20.CompanyServiceAgreement,
    ),
    _i1.RouteDef(
      Routes.companyServicePreviewAgreement,
      page: _i21.CompanyServicePreviewAgreement,
    ),
    _i1.RouteDef(
      Routes.companyServiceTransactionView,
      page: _i22.CompanyServiceTransactionView,
    ),
    _i1.RouteDef(
      Routes.payIndividualGoods,
      page: _i23.PayIndividualGoods,
    ),
    _i1.RouteDef(
      Routes.previewAgreementView,
      page: _i24.PreviewAgreementView,
    ),
    _i1.RouteDef(
      Routes.agreementOneView,
      page: _i25.AgreementOneView,
    ),
    _i1.RouteDef(
      Routes.transactionPreview,
      page: _i26.TransactionPreview,
    ),
    _i1.RouteDef(
      Routes.disputesView,
      page: _i27.DisputesView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i28.ProfileView,
    ),
    _i1.RouteDef(
      Routes.transactionSuccessView,
      page: _i29.TransactionSuccessView,
    ),
    _i1.RouteDef(
      Routes.pinVerify,
      page: _i30.PinVerify,
    ),
    _i1.RouteDef(
      Routes.bioDataForm,
      page: _i31.BioDataForm,
    ),
    _i1.RouteDef(
      Routes.confirmPin,
      page: _i32.ConfirmPin,
    ),
    _i1.RouteDef(
      Routes.createPin,
      page: _i33.CreatePin,
    ),
    _i1.RouteDef(
      Routes.completeVerify,
      page: _i34.CompleteVerify,
    ),
    _i1.RouteDef(
      Routes.documentUpload,
      page: _i35.DocumentUpload,
    ),
    _i1.RouteDef(
      Routes.businessDescription,
      page: _i36.BusinessDescription,
    ),
    _i1.RouteDef(
      Routes.businesType,
      page: _i37.BusinesType,
    ),
    _i1.RouteDef(
      Routes.numberVerify,
      page: _i38.NumberVerify,
    ),
    _i1.RouteDef(
      Routes.verifyOtp,
      page: _i39.VerifyOtp,
    ),
    _i1.RouteDef(
      Routes.proceedView,
      page: _i40.ProceedView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashScreen: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i2.SplashScreen(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i3.OnboardingView: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i3.OnboardingView(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i4.DashboardView: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i4.DashboardView(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.zoomIn,
      );
    },
    _i5.LoginView: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i5.LoginView(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i6.PersonalSignUp: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i6.PersonalSignUp(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i7.SelectAccount: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i7.SelectAccount(),
        settings: data,
      );
    },
    _i8.HomeView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i8.HomeView(),
        settings: data,
      );
    },
    _i9.RewardView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i9.RewardView(),
        settings: data,
      );
    },
    _i10.HistoryView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i10.HistoryView(),
        settings: data,
      );
    },
    _i11.AddMoney: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i11.AddMoney(),
        settings: data,
      );
    },
    _i12.SuccessView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i12.SuccessView(),
        settings: data,
      );
    },
    _i13.CreditTransactionDetail: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i13.CreditTransactionDetail(),
        settings: data,
      );
    },
    _i14.TransactionDetailView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i14.TransactionDetailView(),
        settings: data,
      );
    },
    _i15.PayCompanyGoods: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i15.PayCompanyGoods(),
        settings: data,
      );
    },
    _i16.CompanyGoodsAgreementView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i16.CompanyGoodsAgreementView(),
        settings: data,
      );
    },
    _i17.CompanyGoodPreviewAgreementView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i17.CompanyGoodPreviewAgreementView(),
        settings: data,
      );
    },
    _i18.CompanyGoodTransactionPreview: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i18.CompanyGoodTransactionPreview(),
        settings: data,
      );
    },
    _i19.PayCompanyService: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i19.PayCompanyService(),
        settings: data,
      );
    },
    _i20.CompanyServiceAgreement: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i20.CompanyServiceAgreement(),
        settings: data,
      );
    },
    _i21.CompanyServicePreviewAgreement: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i21.CompanyServicePreviewAgreement(),
        settings: data,
      );
    },
    _i22.CompanyServiceTransactionView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i22.CompanyServiceTransactionView(),
        settings: data,
      );
    },
    _i23.PayIndividualGoods: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i23.PayIndividualGoods(),
        settings: data,
      );
    },
    _i24.PreviewAgreementView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i24.PreviewAgreementView(),
        settings: data,
      );
    },
    _i25.AgreementOneView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i25.AgreementOneView(),
        settings: data,
      );
    },
    _i26.TransactionPreview: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i26.TransactionPreview(),
        settings: data,
      );
    },
    _i27.DisputesView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i27.DisputesView(),
        settings: data,
      );
    },
    _i28.ProfileView: (data) {
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i28.ProfileView(),
        settings: data,
      );
    },
    _i29.TransactionSuccessView: (data) {
      final args = data.getArgs<TransactionSuccessViewArguments>(nullOk: false);
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) =>
            _i29.TransactionSuccessView(key: args.key, purpose: args.purpose),
        settings: data,
      );
    },
    _i30.PinVerify: (data) {
      final args = data.getArgs<PinVerifyArguments>(nullOk: false);
      return _i42.CupertinoPageRoute<dynamic>(
        builder: (context) =>
            _i30.PinVerify(key: args.key, purpose: args.purpose),
        settings: data,
      );
    },
    _i31.BioDataForm: (data) {
      final args = data.getArgs<BioDataFormArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i31.BioDataForm(key: args.key, otpCode: args.otpCode),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i32.ConfirmPin: (data) {
      final args = data.getArgs<ConfirmPinArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i32.ConfirmPin(
                key: args.key,
                accountType: args.accountType,
                token: args.token),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i33.CreatePin: (data) {
      final args = data.getArgs<CreatePinArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => _i33.CreatePin(
            key: args.key, accountType: args.accountType, token: args.token),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i34.CompleteVerify: (data) {
      final args = data.getArgs<CompleteVerifyArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i34.CompleteVerify(
                key: args.key,
                message: args.message,
                type: args.type,
                code: args.code),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i35.DocumentUpload: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i35.DocumentUpload(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i36.BusinessDescription: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i36.BusinessDescription(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i37.BusinesType: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i37.BusinesType(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i38.NumberVerify: (data) {
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const _i38.NumberVerify(),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i39.VerifyOtp: (data) {
      final args = data.getArgs<VerifyOtpArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => _i39.VerifyOtp(
            key: args.key, otpType: args.otpType, number: args.number),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
    _i40.ProceedView: (data) {
      final args = data.getArgs<ProceedViewArguments>(nullOk: false);
      return _i41.PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _i40.ProceedView(
                key: args.key, message: args.message, type: args.type),
        settings: data,
        transitionsBuilder: data.transition ?? _i1.TransitionsBuilders.fadeIn,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class TransactionSuccessViewArguments {
  const TransactionSuccessViewArguments({
    this.key,
    required this.purpose,
  });

  final _i42.Key? key;

  final String purpose;

  @override
  String toString() {
    return '{"key": "$key", "purpose": "$purpose"}';
  }

  @override
  bool operator ==(covariant TransactionSuccessViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.purpose == purpose;
  }

  @override
  int get hashCode {
    return key.hashCode ^ purpose.hashCode;
  }
}

class PinVerifyArguments {
  const PinVerifyArguments({
    this.key,
    required this.purpose,
  });

  final _i42.Key? key;

  final String purpose;

  @override
  String toString() {
    return '{"key": "$key", "purpose": "$purpose"}';
  }

  @override
  bool operator ==(covariant PinVerifyArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.purpose == purpose;
  }

  @override
  int get hashCode {
    return key.hashCode ^ purpose.hashCode;
  }
}

class BioDataFormArguments {
  const BioDataFormArguments({
    this.key,
    required this.otpCode,
  });

  final _i42.Key? key;

  final String otpCode;

  @override
  String toString() {
    return '{"key": "$key", "otpCode": "$otpCode"}';
  }

  @override
  bool operator ==(covariant BioDataFormArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.otpCode == otpCode;
  }

  @override
  int get hashCode {
    return key.hashCode ^ otpCode.hashCode;
  }
}

class ConfirmPinArguments {
  const ConfirmPinArguments({
    this.key,
    required this.accountType,
    required this.token,
  });

  final _i42.Key? key;

  final String accountType;

  final String token;

  @override
  String toString() {
    return '{"key": "$key", "accountType": "$accountType", "token": "$token"}';
  }

  @override
  bool operator ==(covariant ConfirmPinArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.accountType == accountType &&
        other.token == token;
  }

  @override
  int get hashCode {
    return key.hashCode ^ accountType.hashCode ^ token.hashCode;
  }
}

class CreatePinArguments {
  const CreatePinArguments({
    this.key,
    required this.accountType,
    required this.token,
  });

  final _i42.Key? key;

  final String accountType;

  final String token;

  @override
  String toString() {
    return '{"key": "$key", "accountType": "$accountType", "token": "$token"}';
  }

  @override
  bool operator ==(covariant CreatePinArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.accountType == accountType &&
        other.token == token;
  }

  @override
  int get hashCode {
    return key.hashCode ^ accountType.hashCode ^ token.hashCode;
  }
}

class CompleteVerifyArguments {
  const CompleteVerifyArguments({
    this.key,
    required this.message,
    required this.type,
    required this.code,
  });

  final _i42.Key? key;

  final String message;

  final String type;

  final String code;

  @override
  String toString() {
    return '{"key": "$key", "message": "$message", "type": "$type", "code": "$code"}';
  }

  @override
  bool operator ==(covariant CompleteVerifyArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.message == message &&
        other.type == type &&
        other.code == code;
  }

  @override
  int get hashCode {
    return key.hashCode ^ message.hashCode ^ type.hashCode ^ code.hashCode;
  }
}

class VerifyOtpArguments {
  const VerifyOtpArguments({
    this.key,
    required this.otpType,
    required this.number,
  });

  final _i42.Key? key;

  final String otpType;

  final String number;

  @override
  String toString() {
    return '{"key": "$key", "otpType": "$otpType", "number": "$number"}';
  }

  @override
  bool operator ==(covariant VerifyOtpArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.otpType == otpType &&
        other.number == number;
  }

  @override
  int get hashCode {
    return key.hashCode ^ otpType.hashCode ^ number.hashCode;
  }
}

class ProceedViewArguments {
  const ProceedViewArguments({
    this.key,
    required this.message,
    required this.type,
  });

  final _i42.Key? key;

  final String message;

  final String type;

  @override
  String toString() {
    return '{"key": "$key", "message": "$message", "type": "$type"}';
  }

  @override
  bool operator ==(covariant ProceedViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.message == message && other.type == type;
  }

  @override
  int get hashCode {
    return key.hashCode ^ message.hashCode ^ type.hashCode;
  }
}

extension NavigatorStateExtension on _i43.NavigationService {
  Future<dynamic> navigateToSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPersonalSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.personalSignUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSelectAccount([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.selectAccount,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRewardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rewardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.historyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddMoney([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addMoney,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreditTransactionDetail([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.creditTransactionDetail,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransactionDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.transactionDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPayCompanyGoods([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.payCompanyGoods,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyGoodsAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyGoodsAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyGoodPreviewAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyGoodPreviewAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyGoodTransactionPreview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyGoodTransactionPreview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPayCompanyService([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.payCompanyService,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyServiceAgreement([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyServiceAgreement,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyServicePreviewAgreement([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyServicePreviewAgreement,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompanyServiceTransactionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.companyServiceTransactionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPayIndividualGoods([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.payIndividualGoods,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPreviewAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.previewAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAgreementOneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.agreementOneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransactionPreview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.transactionPreview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDisputesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.disputesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTransactionSuccessView({
    _i42.Key? key,
    required String purpose,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.transactionSuccessView,
        arguments: TransactionSuccessViewArguments(key: key, purpose: purpose),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPinVerify({
    _i42.Key? key,
    required String purpose,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.pinVerify,
        arguments: PinVerifyArguments(key: key, purpose: purpose),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBioDataForm({
    _i42.Key? key,
    required String otpCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.bioDataForm,
        arguments: BioDataFormArguments(key: key, otpCode: otpCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConfirmPin({
    _i42.Key? key,
    required String accountType,
    required String token,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.confirmPin,
        arguments: ConfirmPinArguments(
            key: key, accountType: accountType, token: token),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCreatePin({
    _i42.Key? key,
    required String accountType,
    required String token,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.createPin,
        arguments: CreatePinArguments(
            key: key, accountType: accountType, token: token),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCompleteVerify({
    _i42.Key? key,
    required String message,
    required String type,
    required String code,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.completeVerify,
        arguments: CompleteVerifyArguments(
            key: key, message: message, type: type, code: code),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDocumentUpload([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.documentUpload,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBusinessDescription([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.businessDescription,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBusinesType([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.businesType,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNumberVerify([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.numberVerify,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVerifyOtp({
    _i42.Key? key,
    required String otpType,
    required String number,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.verifyOtp,
        arguments:
            VerifyOtpArguments(key: key, otpType: otpType, number: number),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProceedView({
    _i42.Key? key,
    required String message,
    required String type,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.proceedView,
        arguments: ProceedViewArguments(key: key, message: message, type: type),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPersonalSignUp([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.personalSignUp,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSelectAccount([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.selectAccount,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRewardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rewardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHistoryView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.historyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddMoney([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addMoney,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.successView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreditTransactionDetail([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.creditTransactionDetail,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransactionDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.transactionDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPayCompanyGoods([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.payCompanyGoods,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyGoodsAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyGoodsAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyGoodPreviewAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyGoodPreviewAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyGoodTransactionPreview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyGoodTransactionPreview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPayCompanyService([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.payCompanyService,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyServiceAgreement([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyServiceAgreement,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyServicePreviewAgreement([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyServicePreviewAgreement,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompanyServiceTransactionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.companyServiceTransactionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPayIndividualGoods([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.payIndividualGoods,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPreviewAgreementView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.previewAgreementView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAgreementOneView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.agreementOneView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransactionPreview([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.transactionPreview,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDisputesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.disputesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithTransactionSuccessView({
    _i42.Key? key,
    required String purpose,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.transactionSuccessView,
        arguments: TransactionSuccessViewArguments(key: key, purpose: purpose),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPinVerify({
    _i42.Key? key,
    required String purpose,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.pinVerify,
        arguments: PinVerifyArguments(key: key, purpose: purpose),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBioDataForm({
    _i42.Key? key,
    required String otpCode,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.bioDataForm,
        arguments: BioDataFormArguments(key: key, otpCode: otpCode),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConfirmPin({
    _i42.Key? key,
    required String accountType,
    required String token,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.confirmPin,
        arguments: ConfirmPinArguments(
            key: key, accountType: accountType, token: token),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCreatePin({
    _i42.Key? key,
    required String accountType,
    required String token,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.createPin,
        arguments: CreatePinArguments(
            key: key, accountType: accountType, token: token),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCompleteVerify({
    _i42.Key? key,
    required String message,
    required String type,
    required String code,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.completeVerify,
        arguments: CompleteVerifyArguments(
            key: key, message: message, type: type, code: code),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDocumentUpload([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.documentUpload,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBusinessDescription([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.businessDescription,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBusinesType([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.businesType,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNumberVerify([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.numberVerify,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithVerifyOtp({
    _i42.Key? key,
    required String otpType,
    required String number,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.verifyOtp,
        arguments:
            VerifyOtpArguments(key: key, otpType: otpType, number: number),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProceedView({
    _i42.Key? key,
    required String message,
    required String type,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.proceedView,
        arguments: ProceedViewArguments(key: key, message: message, type: type),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
