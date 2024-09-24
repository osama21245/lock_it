import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacer.dart';
import '../../../../core/theme/style.dart';

class CustomDoctorProfile extends StatelessWidget {
  const CustomDoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0).r,
      child: Row(
        children: [
          Image.asset(
            "assets/home_profile_pic.png",
            width: 58.04.w,
            height: 52.11.h,
          ),
          horizontalSpace(12),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            verticalSpace(2),
            Text(
              "Good evening,",
              style: TextStyles.font12GrayMedium,
            ),
            verticalSpace(3),
            Text("Osama Gamil", style: TextStyles.font16WhiteExtraBold),
          ]),
          const Spacer(),
          Image.asset(
            "assets/notification.png",
            width: 17.78,
            height: 18.48,
          )
        ],
      ),
    );
  }
}
