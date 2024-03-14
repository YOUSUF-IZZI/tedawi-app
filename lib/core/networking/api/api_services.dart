abstract class ApiServices {
  // * Every method will receive a req. path, nullable data, and nullable queryParameters as map.
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });

  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });

  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });

  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });
}
