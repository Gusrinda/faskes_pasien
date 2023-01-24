abstract class ApiResponse<DataType> {
  const ApiResponse();

  bool get success;
  String? get message;
  DataType? get data;
}

extension ApiResponseDate on ApiResponse {
  bool get failed => !success && message != null;
}
