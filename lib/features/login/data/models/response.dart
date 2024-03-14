import 'data.dart';

class LoginResponseBodyModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  LoginResponseBodyModel({this.message, this.data, this.status, this.code});

  /// Parses the string and returns the resulting Json object as [LoginResponseBodyModel].
  factory LoginResponseBodyModel.fromJson(Map<String, dynamic> jsonData) {
    return LoginResponseBodyModel(
      message: jsonData['message'],
      data: Data.fromJson(jsonData['data']),
      status: jsonData['status'],
      code: jsonData['code'],
    
    );
  }

}
