import 'package:exam/features/get_user_feature/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:exam/features/get_user_feature/domain/entities/user_entity.dart';
import 'package:exam/features/get_user_feature/domain/usecases/get_all_users.dart';
import 'package:exam/features/get_user_feature/presentaion/components/user_item.dart';
import 'package:exam/features/get_user_feature/presentaion/screens/all_users_screen/all_users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_appbar.dart';

class AllUsersScreen extends StatefulWidget {
  const AllUsersScreen({Key? key}) : super(key: key);

  @override
  State<AllUsersScreen> createState() => _AllUsersScreenState();
}

class _AllUsersScreenState extends State<AllUsersScreen> {

  @override
  void initState() {
    context.read<GetAllUsers>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [

              CustomAppbar(
                onMenuPressed: () {

                },
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: BlocConsumer<AllUsersCubit, AllUsersState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {

                    if(state is AllUsersIsLoading){
                      return CircularProgressIndicator();

                    }else if(state is AllUsersIsSuccess){
                      return ListView.builder(
                          itemCount: AllUsersIsSuccess.users.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return UserItem(userEntity: AllUsersIsSuccess.users[index] );
                          });
                    }else if(state is AllUsersIsError){
                      return Text(AllUsersIsError.message);
                    }else{
                      return SizedBox();
                    }

                  },
                ),
              )
            ],
          )),
    );
  }
}
