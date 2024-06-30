import 'package:stacked/stacked.dart';
import 'package:weverefy/Common/AppUtils/app_ui_components.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.logger.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/helpers/Model/get_profile_response_model/get_profile_response_model.dart';
import 'package:weverefy/core/helpers/Repository/respository_implementation.dart';
import 'package:weverefy/core/router/page_router.dart';

class ProfileViewModel extends IndexTrackingViewModel {
  ProfileViewModel();
  final logger = getLogger('ProfileViewmodel');
  bool? _isLoading;
  bool? get isLoading => _isLoading;
  final repositoryImply = AuthRepoImpl();
  final session = locator<SharedPreferencesService>();
  bool _amountBalanceVisible = false;
  bool? _accountAdded;
  bool? get accountAdded => _accountAdded;
  bool get amountBalanceVisible => _amountBalanceVisible;

  GetProfileResponseModel? _getuserProfile;
  GetProfileResponseModel? get getuserProfile => _getuserProfile;

  String get firstName => session.usersData["firstname"] ?? '';
  String get lastName => session.usersData["lastname"] ?? '';
  String get email => session.usersData["email"] ?? '';
  String get phone => session.usersData["phone_number"] ?? '';
  String get accountType => session.usersData["account_type"] ?? '';

  GetProfileResponseModel? _getUserProfile;
  GetProfileResponseModel? get getUserProfile => _getUserProfile;

  Future<void> getInfo(String token) async {
    try {
      _isLoading = true;
      _getUserProfile = await runBusyFuture(repositoryImply.getProfile(token),
          throwException: true);
      session.usersData = _getUserProfile?.toJson();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      logger.d(e);
      AppUiComponents.triggerNotification(e.toString(), error: true);
      notifyListeners();
    }
  }

  Future<void> logout(contxt) async {
    try {
      _isLoading = true;
      // await runBusyFuture(repositoryImply.logout());
      SharedPreferencesService.instance.isLoggedIn = false;
      SharedPreferencesService.instance.logOut();
      _isLoading = false;
      notifyListeners();
      logger.d(session.authToken);
      await PageRouter.pushReplacement(Routes.onboardingView);
    } catch (e) {
      _isLoading = false;
      AppUiComponents.triggerNotification(e.toString(), error: true);
      // AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
    notifyListeners();
  }
}
