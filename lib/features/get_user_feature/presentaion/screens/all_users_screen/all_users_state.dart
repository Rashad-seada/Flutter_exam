part of 'all_users_cubit.dart';

@immutable
abstract class AllUsersState {}

class AllUsersInitial extends AllUsersState {}

class AllUsersIsLoading extends AllUsersState {}

class AllUsersIsSuccess extends AllUsersState {
  static late List<UserEntity> users;
  AllUsersIsSuccess(List<UserEntity> allUsers){
    users = allUsers;
  }
}

class AllUsersIsError extends AllUsersState {
  static late String message;
  AllUsersIsError(String errorMessage){
    message = errorMessage;
  }
}

