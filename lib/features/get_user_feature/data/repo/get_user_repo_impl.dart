
import 'package:dartz/dartz.dart';
import 'package:exam/core/failure/failure.dart';
import 'package:exam/features/get_user_feature/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:exam/features/get_user_feature/domain/entities/user_entity.dart';
import 'package:exam/features/get_user_feature/domain/repo/get_user_repo.dart';

class GetUserRepoImpl extends GetUserRepo {

  RemoteDataSource remoteDataSource = RemoteDataSourceImpl();

  @override
  Future<Either<Failure,List<UserEntity>>> getAllUsers() async {
    try{
      var users = await remoteDataSource.getAllUsers();
      return right(users);
    }catch(e){
      return left(Failure("there was an unkwon error"));
    }
  }
}