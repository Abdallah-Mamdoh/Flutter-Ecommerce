import 'package:dio/dio.dart';
import 'package:flutter_quiz_project/data/models/list_data_model.dart';

class dataList {
  Dio dio = Dio();
  Future<UserModel?> getData() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/albums");

    if (response.statusCode == 200) {
      final UserModel responseData = UserModel.fromJson(response.data);
      return (responseData);
    } else {
      return null;
    }
  }
}
