import 'package:doctor_app/core/theming/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

IconButton backButton(context) => IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon:  Icon(
      Icons.arrow_back_ios_new_rounded,
      size: 25.sp,
      color: AppColor.darkBlue,
    ));
