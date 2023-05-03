
import 'package:dartz/dartz.dart';
import 'package:exam/core/failure/failure.dart';

import '../../data/models/user_model.dart';
import '../entities/user_entity.dart';

abstract class GetUserRepo {

  Future<Either<Failure,List<UserEntity>>> getAllUsers();

}