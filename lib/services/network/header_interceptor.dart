import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HeaderInterceptors extends Interceptor {
  // final cachedService = get_x.Get.find<CachedService>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // final token = await cachedService.retrieveUserToken();

    options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // "Authorization": "Bearer $token",
    });

    if (options.uri.toString().contains('driver/register')) {
      options.headers.addAll({
        'Content-Type': 'multi-part/form-data',
      });
    }

    // if (_paths.any((p) => options.uri.toString().contains('cancel'))) {
    //   final token = await authService.retrieveUserToken();
    //   options.headers.addAll({
    //     "Accept": "application/json",
    //     "Content-Type": "application/json",
    //     // "Authorization": "Bearer $token",
    //     "S-KEY": token,
    //   });
    // }

    // get_x.Get.log(options.uri.toString());
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      // print('Response from API Call');
      // print('Entire response');
      // print(response);
      // print('Response Data');
      // print(response.data);
    }
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // get_x.Get.log('INTERCEPTED ERROR');
    // final authController = get_x.Get.find<AuthController>();

    // get_x.Get.log('${err.response?.data}');
    // if (err.response?.statusCode == 401 &&
    //<<<<<<< redesign
    //      get_x.Get.currentRoute != Routes.AUTH &&
    //    get_x.Get.currentRoute.isNotEmpty) {
    //authService.clearUserToken();
    //get_x.Get.offAllNamed(Routes.AUTH);

    //   get_x.Get.currentRoute != Routes.AUTH) {
    // cachedService.clearUserToken();

    // authService.isMessageUnauthenticated = true;

    // get_x.Get.currentRoute.isNotEmpty
    //     ? get_x.Get.offAllNamed(Routes.AUTH)
    //     : DoNothingAction();
    // }
    return super.onError(err, handler);
  }
}
