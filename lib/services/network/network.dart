import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'apiClient.dart';
import 'header_interceptor.dart';

class NetworkProvider {
  static final NetworkProvider _instance = NetworkProvider._internal();

  static NetworkProvider get instance => _instance;

  late Dio dio;
  late ApiClient apiClient;

  factory NetworkProvider() {
    return _instance;
  }
  AwesomeDioInterceptor awesomeDioInterceptor = AwesomeDioInterceptor(
    logRequestTimeout: true,
    logRequestHeaders: true,
    logResponseHeaders: true,
    logger: debugPrint,
  );
  //create singleton
  NetworkProvider._internal() {
    dio = Dio();
    dio.interceptors.add(HeaderInterceptors());
    dio.interceptors.add(awesomeDioInterceptor);
    dio.options.connectTimeout = const Duration(milliseconds: 30000);
    dio.options.receiveTimeout = const Duration(milliseconds: 30000);
    apiClient = ApiClient(dio, baseUrl: ApiClient.baseUrl);
  }

  Future downloadFile(String url, savePath, {VoidCallback? onCompleted}) async {
    CancelToken cancelToken = CancelToken();
    try {
      await dio.download(url, savePath,
          onReceiveProgress: showDownloadProgress, cancelToken: cancelToken);
      return Future.value();
    } catch (e) {
      print(e);
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
  }
}
