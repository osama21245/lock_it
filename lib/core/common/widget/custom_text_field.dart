import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_pallete.dart';
import '../../theme/font_weight_helper.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  const CustomTextField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 3.h),
            child: Text(
              title,
              style: TextStyle(
                  color: AppPallete.whiteColor,
                  fontSize: 16.h,
                  fontWeight: FontWeightHelper.medium),
            ),
          ),
          SizedBox(
            width: 320.w,
            height: 45.h,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 0.5.w,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.h),
                    width: 320.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                          width: 1.5, color: const Color(0xff00C2FF)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8.h),
                  width: 320.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff011B21),
                          Color(0xff011B21),
                          Color.fromARGB(110, 1, 27, 33),
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.transparent
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextFormField(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
