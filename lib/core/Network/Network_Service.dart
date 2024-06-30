// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
// import 'package:BillTop/Core/CoreFolder/app.dart';
import 'package:injectable/injectable.dart';
import 'package:weverefy/core/MainCore/AppConfig.dart';
import 'package:weverefy/core/MainCore/Manager/shared_preferences.dart';
import 'package:weverefy/core/MainCore/app.locator.dart';
import 'package:weverefy/core/MainCore/app.router.dart';
import 'package:weverefy/core/Network/AppInterceptor.dart';
import 'package:weverefy/core/router/page_router.dart';
import 'ApiError.dart';

/// description: A network provider class which manages network connections
/// between the app and external services. This is a wrapper around [Dio].
///
/// Using this class automatically handle, token management, logging, global
void printWrapped(String text) {
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

/// A top level function to print dio logs
void printDioLogs(Object object) {
  printWrapped(object.toString());
}

@lazySingleton
class NetworkService {
  static const Duration connectTimeout = Duration(minutes: 3);
  static const Duration receiveTimeout = Duration(minutes: 3);
  Dio? dio;
  String? baseUrl, authToken;

  final session = locator<SharedPreferencesService>();

  NetworkService({String? baseUrl, String? authToken}) {
    // ignore: prefer_initializing_formals
    this.baseUrl = baseUrl;
    // ignore: prefer_initializing_formals
    this.authToken = authToken;
    _initialiseDio();
  }

  /// Initialize essential class properties
    void _initialiseDio() {
    dio = Dio(BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      baseUrl: baseUrl ?? AppConfig.apiUrl,
    ));
    authToken ??= session.authToken;
    dio!.interceptors
      ..add(AppInterceptor(authToken ?? ''))
      ..add(LogInterceptor(requestBody: true, logPrint: printDioLogs));
  }

  /// Factory constructor used mainly for injecting an instance of [Dio] mock
  NetworkService.test(this.dio);

  Future<Response> call(
    String path,
    RequestMethod method, {
    Map<String, dynamic>? queryParams,
    data,
    FormData? formData,
    ResponseType responseType = ResponseType.json,
    Options? options,
    classTag = '',
  }) async {
    // _initialiseDio();
    Response response;
    var params = queryParams ?? {};
    if (params.keys.contains("searchTerm")) {
      params["searchTerm"] = Uri.encodeQueryComponent(params["searchTerm"]);
    }
    try {
      switch (method) {
        case RequestMethod.post:
          response = await dio!.post(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.get:
          response = await dio!.get(path,
              queryParameters: data, options: options ?? await _getOption());

          break;
        case RequestMethod.getParams:
          response = await dio!.get(path,
              queryParameters: params, options: options ?? await _getOption());

          break;
        case RequestMethod.put:
          response = await dio!.put(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.delete:
          response = await dio!.delete(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.upload:
          response = await dio!.post(path,
              data: formData,
              queryParameters: params,
              options: options ??
                  Options(headers: {
                    "Authorization": "Bearer ${session.authToken}",
                    "Content-Disposition": "form-data",
                    "Content-Type": "multipart/form-data",
                    'Accept': 'application/json'
                  }), onSendProgress: (sent, total) {
            // eventBus
            //     .fire(
            //     FileUploadProgressEvent(FileUploadProgress(sent, total, tag: classTag)));
          });
          break;
      }
      return response;
    } catch (error, stackTrace) {
      var apiError = ApiError.fromDio(error);
      if (apiError.errorType == 401) {
        print(apiError.errorDescription);
        // eventBus.fire(LogoutEvent("just log out out of here pls"));
        // print('error plate ${error.toString()}');
        if (apiError.errorDescription == 'Unauthenticated.') {
          // await session.logOut();
          // PageRouter.pushReplacement(Routes.loginView);
          // AppUiComponents.triggerNotification("Login to Continue", error: true);
        }
      }
      return Future.error(apiError, stackTrace);
    }
  }

  Future<Options> _getOption() async {
    return Options(headers: {
      "Authorization": "Bearer ${session.authToken}",
      'Accept': 'application/json',
    });
  }
}

enum RequestMethod { post, get, put, delete, upload, getParams }

@lazySingleton
class IdentityService {
  static const Duration connectTimeout = Duration(minutes: 3);
  static const Duration receiveTimeout = Duration(minutes: 3);
  Dio? dio;
  String? baseUrl, authToken;

  final session = locator<SharedPreferencesService>();

  IdentityService({String? baseUrl, String? authToken}) {
    // ignore: prefer_initializing_formals
    this.baseUrl = baseUrl;
    // ignore: prefer_initializing_formals
    this.authToken = authToken;
    _initialiseDio();
  }

  /// Initialize essential class properties
  void _initialiseDio() {
    dio = Dio(BaseOptions(
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      baseUrl: baseUrl ?? AppConfig.verifyUrl,
    ));
    authToken ??= session.authToken;
    dio!.interceptors
      ..add(AppInterceptor(authToken ?? ''))
      ..add(LogInterceptor(requestBody: true, logPrint: printDioLogs));
  }

  /// Factory constructor used mainly for injecting an instance of [Dio] mock
  IdentityService.test(this.dio);

  Future<Response> seek(
    String path,
    RequestMethod method, {
    Map<String, dynamic>? queryParams,
    data,
    FormData? formData,
    ResponseType responseType = ResponseType.json,
    Options? options,
    classTag = '',
  }) async {
    // _initialiseDio();
    Response response;
    var params = queryParams ?? {};
    if (params.keys.contains("searchTerm")) {
      params["searchTerm"] = Uri.encodeQueryComponent(params["searchTerm"]);
    }
    try {
      switch (method) {
        case RequestMethod.post:
          response = await dio!.post(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.get:
          response = await dio!.get(path,
              queryParameters: data, options: options ?? await _getOption());

          break;
        case RequestMethod.getParams:
          response = await dio!.get(path,
              queryParameters: params, options: options ?? await _getOption());

          break;
        case RequestMethod.put:
          response = await dio!.put(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.delete:
          response = await dio!.delete(path,
              queryParameters: params,
              data: data,
              options: options ?? await _getOption());
          break;
        case RequestMethod.upload:
          response = await dio!.post(path,
              data: formData,
              queryParameters: params,
              options: options ??
                  Options(headers: {
                    "Authorization": "Bearer ${session.authToken}",
                    "Content-Disposition": "form-data",
                    "Content-Type": "multipart/form-data",
                    'Accept': 'application/json'
                  }), onSendProgress: (sent, total) {
            // eventBus
            //     .fire(
            //     FileUploadProgressEvent(FileUploadProgress(sent, total, tag: classTag)));
          });
          break;
      }
      return response;
    } catch (error, stackTrace) {
      var apiError = ApiError.fromDio(error);
      if (apiError.errorType == 401) {
        print(apiError.errorDescription);
        // eventBus.fire(LogoutEvent("just log out out of here pls"));
        // print('error plate ${error.toString()}');
        if (apiError.errorDescription == 'Unauthenticated.') {
          // await session.logOut();
          // PageRouter.pushReplacement(Routes.loginView);
          // AppUiComponents.triggerNotification("Login to Continue", error: true);
        }
      }
      return Future.error(apiError, stackTrace);
    }
  }

  Future<Options> _getOption() async {
    return Options(headers: {
      "Content-type": "application/json",
      "Authorization": "Bearer ${session.authToken}",
      'Accept': 'application/json',
    });
  }
}
