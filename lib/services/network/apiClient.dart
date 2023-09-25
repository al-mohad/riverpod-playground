import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'apis.dart';

part 'apiClient.g.dart';

@RestApi(baseUrl: 'https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/')
abstract class ApiClient {
  static bool isLiveEnvironment = true;

  static String devUrl = 'http://128.199.4.128:3005/api/v1';
  static String liveUrl = 'http://128.199.4.128:3005/api/v1';

  static String baseUrl = isLiveEnvironment ? liveUrl : devUrl;

  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  //----------------------Auth endpoints-----------------------------
  @POST(Apis.loginAPIUser)
  Future<dynamic> loginAPIUser(@Body() Map<String, dynamic> data);

  @POST(Apis.createAPIUser)
  Future<dynamic> createPIUser(@Body() Map<String, dynamic> data);

  //----------------------Users endpoints-----------------------------

  @POST(Apis.requestPhoneNumberOTP)
  Future<dynamic> requestPhoneNumberOTP(@Body() Map<String, dynamic> data);

  @GET(Apis.phoneExists)
  Future<dynamic> phoneExist(@Body() Map<String, dynamic> data);

  @POST(Apis.requestEmailOTP)
  Future<dynamic> requestEmailOTP(@Body() Map<String, dynamic> data);

  @POST(Apis.sendVerificationEmail)
  Future<dynamic> sendVerificationEmail(@Body() Map<String, dynamic> data);

  @GET(Apis.verifyEmail)
  Future<dynamic> verifyEmail(@Body() Map<String, dynamic> data);

  @POST(Apis.login)
  Future<dynamic> login(@Body() Map<String, dynamic> data);

  @POST(Apis.resetPassword)
  Future<dynamic> resetPassword(@Body() Map<String, dynamic> data);

  @POST(Apis.forgotPassword)
  Future<dynamic> forgotPassword(@Body() Map<String, dynamic> data);

  @POST(Apis.restPin)
  Future<dynamic> restPin(@Body() Map<String, dynamic> data);

  @GET(Apis.newUserDetails)
  Future<dynamic> newUserDetails(@Body() Map<String, dynamic> data);

  @POST(Apis.create)
  Future<dynamic> create(@Body() Map<String, dynamic> data);

  @POST(Apis.passwordCheck)
  Future<dynamic> passwordCheck(@Body() Map<String, dynamic> data);

  @POST(Apis.setAvatarLink)
  Future<dynamic> setAvatarLink(@Body() Map<String, dynamic> data);

  @POST(Apis.addAddress)
  Future<dynamic> addAddress(@Body() Map<String, dynamic> data);

  @GET(Apis.list)
  Future<dynamic> list(@Body() Map<String, dynamic> data);

  @POST(Apis.getUser)
  Future<dynamic> getUser(@Body() Map<String, dynamic> data);

  @GET(Apis.suspendAccount)
  Future<dynamic> suspendAccount(@Body() Map<String, dynamic> data);

  @POST(Apis.createPin)
  Future<dynamic> createPin(@Body() Map<String, dynamic> data);

  @GET(Apis.initiateAddCard)
  Future<dynamic> initiateAddCard(@Body() Map<String, dynamic> data);

  @GET(Apis.setTransactionLimit)
  Future<dynamic> setTransactionLimit(@Body() Map<String, dynamic> data);

  @POST(Apis.removeCard)
  Future<dynamic> removeCard(@Body() Map<String, dynamic> data);
}
