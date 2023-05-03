import 'package:dio/dio.dart';
import 'package:exam/core/ui_utils/app_strings.dart';
import 'package:exam/features/get_user_feature/data/models/user_model.dart';


abstract class RemoteDataSource {

  Future<List<UserModel>> getAllUsers();

}

class RemoteDataSourceImpl extends RemoteDataSource {

  Dio client = Dio();


  @override
  Future<List<UserModel>> getAllUsers() async {

    Response response = await client.get(
      AppStrings.baseUrl + AppStrings.getAllUsersEndPoint,
      options: Options(
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status)=> true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        receiveTimeout: const Duration(seconds: 60),
      ),
    );

    List<dynamic> data = response.data;

    return data.map((e) => UserModel.fromJson(e)).toList();

  }



}