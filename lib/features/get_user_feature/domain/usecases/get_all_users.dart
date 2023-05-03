
import 'package:dartz/dartz.dart';
import 'package:exam/features/get_user_feature/data/repo/get_user_repo_impl.dart';
import 'package:exam/features/get_user_feature/domain/repo/get_user_repo.dart';

import '../../../../core/failure/failure.dart';
import '../entities/user_entity.dart';

class GetAllUsers {

  GetUserRepo repo = GetUserRepoImpl();

  Future<Either<Failure,List<UserEntity>>> call() async  {
    return await repo.getAllUsers();
  }

}