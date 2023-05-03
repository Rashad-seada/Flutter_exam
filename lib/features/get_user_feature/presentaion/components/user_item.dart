import 'package:exam/core/ui_utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../domain/entities/user_entity.dart';
import 'main_button.dart';

class UserItem extends StatelessWidget {
  UserEntity userEntity;

  UserItem({
    required this.userEntity,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [


          Row(
            children: [
              Container(
                width: 6.h,
                height: 6.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: .2.h,color: AppColors.primaryClr),
                ),
                child: Container(
                  width: 4.5.h,
                  height: 4.5.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network("${userEntity.avatar}"),
                ),
              ),

              SizedBox(width: 4.w,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${userEntity.name}",style: TextStyle(fontSize: 20.sp),),

                  SizedBox(height: 1.h,),
                  Text("${userEntity.role}",style: TextStyle(color: Colors.grey),)

                ],
              ),
            ],
          ),


          MainButton(
            lable: "View",
            onPressed: () {  },
          )
        ],
      ),
    );
  }
}
