import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      // ! The first 7 cases mean the request was sent but the server didn't respond
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad Certificate');
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: 'Request to API server was Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: 'Unknown Error');
      // ! This case shows that the request was sent but the server but responded with an error
      case DioExceptionType.badResponse:
        return ServerFailure.fromStatusCode(dioException.response!.statusCode!);
      default:
        return ServerFailure(errorMessage: 'Ooops, Something went wrong!');
    }
  }

  factory ServerFailure.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 400:
        return ServerFailure(errorMessage: 'Bad Request');
      case 401:
        return ServerFailure(errorMessage: 'Unauthorized');
      case 403:
        return ServerFailure(errorMessage: 'Forbidden');
      case 404:
        return ServerFailure(errorMessage: 'Your Request Not Found, try later');
      case 500:
        return ServerFailure(
            errorMessage: 'Internal Server Error, Please try again later');
      case 502:
        return ServerFailure(errorMessage: 'Bad Gateway');
      case 503:
        return ServerFailure(errorMessage: 'Service Unavailable');
      case 504:
        return ServerFailure(errorMessage: 'Gateway Timeout');
      default:
        return ServerFailure(errorMessage: 'Server Error');
    }
  }
}
