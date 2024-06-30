// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../../Features/dashboard/dashboardViewModel.dart';
import '../Network/Network_Service.dart';
import '../api/authapi.dart';
import '../helpers/Contract/Contract_implementation.dart';
import '../helpers/Repository/respository_implementation.dart';
import '../helpers/viewModel/AuthViewModel.dart';
import '../helpers/viewModel/profile_viewModel.dart';
import 'Manager/shared_preferences.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => SharedPreferencesService());
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton(() => IdentityService());
  locator.registerLazySingleton(() => AuthViewModel());
  locator.registerLazySingleton(() => DashboardViewModel());
  locator.registerLazySingleton(() => ProfileViewModel());
  locator.registerLazySingleton(() => AuthApi());
  locator.registerLazySingleton(() => AuthRepoImpl());
  locator.registerLazySingleton(() => AuthContractsImpl());
}
