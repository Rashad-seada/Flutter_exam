import 'package:exam/core/ui_utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainButton extends StatelessWidget {
  String lable;
  void Function() onPressed;

  MainButton({
    required this.lable,
    required this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 25.w,
      height: 6.h,
      decoration: BoxDecoration(
        color: AppColors.primaryClr,
        borderRadius: BorderRadius.circular(4.h),

      ),
      child: Text("${lable}",style: TextStyle(color: Colors.white),),
    );
  }
}
