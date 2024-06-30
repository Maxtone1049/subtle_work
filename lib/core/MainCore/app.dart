import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weverefy/Features/Auth/Login/login_view.dart';
import 'package:weverefy/Features/Auth/Otp/verify_otp.dart';
import 'package:weverefy/Features/Auth/business-type/business/docsverity.dart';
import 'package:weverefy/Features/Auth/business-type/business/form_three.dart';
import 'package:weverefy/Features/Auth/business-type/business/form_two.dart';
import 'package:weverefy/Features/Auth/business-type/business/phoneInput.dart';
import 'package:weverefy/Features/Auth/personal/Create_Pin/confirmpin.dart';
import 'package:weverefy/Features/Auth/personal/Create_Pin/createpin.dart';
import 'package:weverefy/Features/Auth/personal/biodataform_view.dart';
import 'package:weverefy/Features/Auth/personal/complete_view.dart';
import 'package:weverefy/Features/Auth/personal/proceed_view.dart';
import 'package:weverefy/Features/Auth/personal/signup_personal_view.dart';
import 'package:weverefy/Features/dashboard/dashboardViewModel.dart';
import 'package:weverefy/Features/dashboard/dashboard_view.dart';
import 'package:weverefy/Features/dashboard/disputes/disputes_view.dart';
import 'package:weverefy/Features/dashboard/general/succes_screen.dart';
import 'package:weverefy/Features/dashboard/general/transact_for_verify.dart';
import 'package:weverefy/Features/dashboard/history/history_view.dart';
import 'package:weverefy/Features/dashboard/history/views/credit_transaction_details.dart';
import 'package:weverefy/Features/dashboard/history/views/debit_transaction_details.dart';
import 'package:weverefy/Features/dashboard/home/Views/add_money.dart';
import 'package:weverefy/Features/dashboard/home/Views/success_screen.dart';
import 'package:weverefy/Features/dashboard/home/home_view.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_for_goods.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_agreementone_view.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_preview_agreement.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_goods/company_goods_transaction_preview.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_for_services.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_agreementone_view.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_preview_agreement.dart';
import 'package:weverefy/Features/dashboard/payment/company/company_for_services/company_service_transaction_preview.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/agreementone_view.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/individual_for_goods.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/preview_agreement.dart';
import 'package:weverefy/Features/dashboard/payment/individual/individual_for_goods/transaction_preview.dart';
import 'package:weverefy/Features/dashboard/profile/profile_view.dart';
import 'package:weverefy/Features/dashboard/rewards/reward_view.dart';
import 'package:weverefy/Features/onboarding/onboarding.dart';
import 'package:weverefy/Features/onboarding/select_account.dart';
import 'package:weverefy/Features/onboarding/splash_view.dart';
import 'package:weverefy/core/api/authapi.dart';
import 'package:weverefy/core/helpers/Contract/Contract_implementation.dart';
import 'package:weverefy/core/helpers/Repository/respository_implementation.dart';
import 'package:weverefy/core/helpers/viewModel/AuthViewModel.dart';
import 'package:weverefy/core/helpers/viewModel/profile_viewModel.dart';

import '../Network/Network_Service.dart';
import 'Manager/shared_preferences.dart';

@StackedApp(
  routes: [
    CustomRoute(
        page: SplashScreen, transitionsBuilder: TransitionsBuilders.fadeIn),
    // MaterialRoute(page: SplashScreen, initial: false),
    CustomRoute(
        page: OnboardingView,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        initial: true),
    CustomRoute(
        page: DashboardView, transitionsBuilder: TransitionsBuilders.zoomIn),
    CustomRoute(
        page: LoginView, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: PersonalSignUp, transitionsBuilder: TransitionsBuilders.fadeIn),
    CupertinoRoute(page: SelectAccount),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: RewardView),
    CupertinoRoute(page: HistoryView),
    CupertinoRoute(page: AddMoney),
    CupertinoRoute(page: SuccessView),
    CupertinoRoute(page: CreditTransactionDetail),
    CupertinoRoute(page: TransactionDetailView),
    CupertinoRoute(page: PayCompanyGoods),
    CupertinoRoute(page: CompanyGoodsAgreementView),
    CupertinoRoute(page: CompanyGoodPreviewAgreementView),
    CupertinoRoute(page: CompanyGoodTransactionPreview),
    CupertinoRoute(page: PayCompanyService),
    CupertinoRoute(page: CompanyServiceAgreement),
    CupertinoRoute(page: CompanyServicePreviewAgreement),
    CupertinoRoute(page: CompanyServiceTransactionView),
    CupertinoRoute(page: PayIndividualGoods),
    CupertinoRoute(page: PreviewAgreementView),
    CupertinoRoute(page: AgreementOneView),
    CupertinoRoute(page: TransactionPreview),
    CupertinoRoute(page: DisputesView),
    CupertinoRoute(page: ProfileView),
    CupertinoRoute(page: TransactionSuccessView),
    CupertinoRoute(page: PinVerify),
    CustomRoute(
        page: BioDataForm, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: ConfirmPin, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: CreatePin, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: CompleteVerify, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: DocumentUpload, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: BusinessDescription,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: BusinesType, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: NumberVerify, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: VerifyOtp, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(
        page: ProceedView, transitionsBuilder: TransitionsBuilders.fadeIn),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: IdentityService),
    LazySingleton(classType: AuthViewModel),
    LazySingleton(classType: DashboardViewModel),
    LazySingleton(classType: ProfileViewModel),
    LazySingleton(classType: AuthApi),
    LazySingleton(classType: AuthRepoImpl),
    LazySingleton(classType: AuthContractsImpl),
  ],
  // bottomsheets: [
  //   StackedBottomsheet(classType: RecallPaymentSheets),
  //   StackedBottomsheet(classType: ReleaseSheets),
  // ],
  logger: StackedLogger(),
)
class App {}
