import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lock_it/core/common/widget/app_background_color.dart';
import 'package:lock_it/features/home/presentation/widgets/custom_doctor_profile.dart';

import '../../../../core/theme/app_pallete.dart';
import '../../../../core/theme/font_weight_helper.dart';
import '../widgets/custom_home_banner.dart';
import '../widgets/custom_home_catergories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppBackgroundColor(
          screenContent: SafeArea(
              child: Column(
        children: [
          CustomDoctorProfile(),
          CustomHomeBanner(),
          CustomHomeCatergories()
        ],
      ))),
    );
  }
}
