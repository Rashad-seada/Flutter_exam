import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/get_all_users.dart';

part 'all_users_state.dart';

class AllUsersCubit extends Cubit<AllUsersState> {
  AllUsersCubit() : super(AllUsersInitial());

  getAllUsers() async {
    emit(AllUsersIsLoading());
    await GetAllUsers().call().then(
            (value) => value.fold(
                    (l) {
                      emit(AllUsersIsError(l.message));
                    },
                    (r) {
                      emit(AllUsersIsSuccess(r));
                    }
            ));
  }


}
