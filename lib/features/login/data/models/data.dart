class Data {
  String? token;
  String? username;

  Data({this.token, this.username});

  factory Data.fromJson(Map<String, dynamic> jsonData) {
    return Data(
      token: jsonData['token'],
      username: jsonData['username'],
    );
  }
}
