import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/theme/font_weight_helper.dart';

class CustomHomeBanner extends StatelessWidget {
  const CustomHomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 348.w,
      height: 200.h,
      child: Stack(
        children: [
          Image.asset(
            "assets/home_frame.png",
            width: 348.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "600",
                        style: TextStyle(
                            color: AppPallete.whiteColor,
                            fontSize: 30.h,
                            fontWeight: FontWeightHelper.bold,
                            fontFamily: "Inter"),
                      ),
                      Text(
                        "Students",
                        style: TextStyle(
                            color: AppPallete.whiteColor,
                            fontSize: 12.24.h,
                            fontWeight: FontWeightHelper.regular,
                            fontFamily: "Inter"),
                      )
                    ],
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 158.28.w),
                    child: Text(
                      "in faculty of Computers and Artificial Intelligence",
                      style: TextStyle(
                          color: AppPallete.whiteColor,
                          fontSize: 11.24.h,
                          fontWeight: FontWeightHelper.semiBold,
                          fontFamily: "Inter"),
                    ),
                  )
                ],
              ),
              MaterialButton(
                  color: AppPallete.whiteColor,
                  onPressed: () {},
                  height: 27.49.h,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0.r),
                  ),
                  child: Text(
                    "Show more Details",
                    style: TextStyle(
                        color: const Color(0xff495ECA),
                        fontSize: 11.24.h,
                        fontWeight: FontWeightHelper.semiBold,
                        fontFamily: "Inter"),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
