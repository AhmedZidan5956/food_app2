import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:food_app/core/features/auth/data/mapper/login_mapper.dart';
import 'package:food_app/core/features/auth/data/response/login_response.dart';
import 'package:food_app/core/features/auth/presentation/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../../../storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../widgets/constants.dart';
import '../../../../widgets/helpers.dart';

class AuthApiController with Helpers {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  post({
    required String endPoint,
    required Map<String, dynamic> body,
    required Map<String, String> header,
  }) async {
    Response response =
        await http.post(Uri.parse(endPoint), body: body, headers: header);

    return response;
  }

  Future<bool> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    Response response = post(endPoint: ApiRequest.login, body: {
      ApiConstants.email: email,
      ApiConstants.password: password,
    }, header: {
      ApiConstants.acceptLanguage: appSettingsSharedPreferences.defaultLocale,
    });
    var json = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      LoginResponse loginResponse = LoginResponse.fromJson(json);
      LoginModel loginModel = loginResponse.toDomain();
      appSettingsSharedPreferences.setToken(loginModel.accessToken);
      appSettingsSharedPreferences.saveUserInfo(loginModel.user);
      appSettingsSharedPreferences.setLoggedIn();
      return true;
    }
    showSnackBar(
      context: context,
      message: json[ApiConstants.errorMessage] ?? 'Error',
      error: true,
    );
    return false;
  }

  Future<bool> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
    required BuildContext context,
  }) async {
    Response response = await post(endPoint: ApiRequest.register, body: {
      ApiConstants.email: email,
      ApiConstants.password: password,
      ApiConstants.confirmPassword: confirmPassword,
      ApiConstants.authName: name,
      ApiConstants.phone: phone,
      ApiConstants.registerBy: email,
    }, header: {});

    var json = jsonDecode(response.body);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return true;
    }
    showSnackBar(
      context: context,
      message: json[ApiConstants.errorMessage] ?? 'Error',
      error: true,
    );
    return false;
  }
}
