import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioException dioError) {
    // Get.dialog(Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: ListView(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Text(
    //             dioError.toString(),
    //             style: TextStyle(height: 1.4),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ));
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.unknown:
        message = "Something went wrong, please try later.";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = dioError.response?.data["message"];
        // message = _handleError(
        //     dioError.response!.statusCode!, dioError.response!.data);
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  late String message;

  String _handleError(dynamic statusCode, dynamic error) {
    print(statusCode);
    switch (statusCode) {
      case "success":
        return error["message"];
      case "error":
        return error["message"];
      case 013:
        return 'No transactions history';
      case 400:
        return 'Bad request';
      case 401:
        return error["message"];
      case 403:
        return error["message"];
      case 404:
        return error["message"];
      case 422:
        return error["message"];
      case 406:
        return error["message"];
      case 500:
        return 'Internal server error';
      case 504:
        return 'Your request has timed out.';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
