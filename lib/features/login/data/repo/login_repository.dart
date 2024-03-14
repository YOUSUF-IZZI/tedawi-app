import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tedawi/core/networking/api/api_constants.dart';
import 'package:tedawi/core/networking/api/api_services.dart';
import 'package:tedawi/core/networking/errors/exceptions.dart';
import 'package:tedawi/features/login/data/models/response.dart';

class LoginRepository {
  // ! Note that we are using ApiServices object not DioServices
  final ApiServices apiServices;
  LoginRepository(this.apiServices);

  Future<Either<Failure, LoginResponseBodyModel>> signIn({required String email, required String password}) async {
    try {
      final response = await apiServices.post(
        ApiConstants.baseUrl + ApiConstants.signIn,
        data: {'email': email, 'password': password}, 
      );
      final responseBody = LoginResponseBodyModel.fromJson(response);
      return Right(responseBody);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
    // ! we can save the token and the id(jwt_decoder) here using hive or shared preferences
  }
}
