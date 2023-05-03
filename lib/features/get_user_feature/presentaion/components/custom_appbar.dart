import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppbar extends StatelessWidget {
  void Function() onMenuPressed;

  CustomAppbar({
    required this.onMenuPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: SizedBox(
        width: double.infinity,
        height: 12.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("Home",style: TextStyle(fontSize: 25.sp),),

            IconButton(onPressed: (){
              onMenuPressed();
            }, icon: Icon(Icons.menu))


          ],
        ),
      ),
    );
  }
}
