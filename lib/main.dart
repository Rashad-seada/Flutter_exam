import 'package:exam/features/get_user_feature/presentaion/screens/all_users_screen/all_users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'features/get_user_feature/presentaion/screens/all_users_screen/all_users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AllUsersCubit()),

      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: AllUsersScreen(),
        );
      }),
    );
  }
}
