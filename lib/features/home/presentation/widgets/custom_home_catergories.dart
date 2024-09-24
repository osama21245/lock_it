import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../core/helpers/spacer.dart';
import '../../../../core/theme/font_weight_helper.dart';

class CustomHomeCatergories extends StatelessWidget {
  const CustomHomeCatergories({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: 2,
          itemBuilder: (context, i) => Stack(
                children: [
                  Container(
                    height: i == 1 ? 250.h : 208.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xff70C1D4)),
                  ),
                  Container(
                    height: i == 1 ? 250.h : 208.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xff000000).withOpacity(0.0),
                              const Color(0xff000000).withOpacity(0.8)
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Image.asset(
                          "assets/doctors_data.png",
                          width: 113.w,
                          height: 113.h,
                        ),
                        verticalSpace(4),
                        Padding(
                          padding: const EdgeInsets.all(16.0).r,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Doctors' data",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeightHelper.regular,
                                    fontFamily: "Inter",
                                    fontSize: 16.57.h),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
