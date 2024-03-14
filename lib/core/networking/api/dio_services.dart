import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tedawi/core/networking/api/api_services.dart';

class DioServices extends ApiServices {
  final Dio dio;

  DioServices(this.dio) {
    //dio.options.baseUrl = ApiConstants.baseUrl;
    //dio.interceptors.add(ApiInterceptor());
    // ! This is for logging the request and response in the console(pretty dio logging package)
    dio.interceptors.add(
      PrettyDioLogger(
        // * List of things to be print in the console
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
      // ! This is for logging the request and response in the console(Native Dio Logging)
      // dio.interceptors.add(LogInterceptor(
      //   // * List of things to be print in the console
      //   request: true,
      //   requestHeader: true,
      //   requestBody: true,
      //   responseHeader: true,
      //   responseBody: true,
      //   error: true,
      //   ),
    );
  }

  // ! isFormData Check if the data we want to send as body is from FormData or not(json)
  @override
  Future<dynamic> get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      debugPrint('DioException: $e');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      debugPrint('DioException: $e');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      debugPrint('DioException: $e');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      debugPrint('DioException: $e');
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
