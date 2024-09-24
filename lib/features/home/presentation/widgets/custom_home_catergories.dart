import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../core/helpers/spacer.dart';
import '../../../../core/theme/font_weight_helper.dart';
import '../../domain/entity/home_categories.dart';

class CustomHomeCatergories extends StatelessWidget {
  const CustomHomeCatergories({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(6.0.r),
        child: MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: homeCategories.length,
            itemBuilder: (context, i) => Padding(
                  padding: EdgeInsets.all(6.0.r),
                  child: Stack(
                    children: [
                      Container(
                        height: i == 0 || i == 2 ? 230.h : 180.h,
                        width: 168.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: homeCategories[i].color),
                      ),
                      Container(
                        height: i == 0 || i == 2 ? 230.h : 180.h,
                        width: 168.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xff000000).withOpacity(0.0),
                                  const Color(0xff000000).withOpacity(0.0),
                                  const Color(0xff000000).withOpacity(0.8)
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Image.asset(
                              homeCategories[i].image,
                              width: i == 0 || i == 2 ? 113.w : 87.w,
                              height: i == 0 || i == 2 ? 113.w : 87.w,
                            ),
                            verticalSpace(4),
                            Padding(
                              padding: const EdgeInsets.all(16.0).r,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    homeCategories[i].title,
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
                  ),
                )),
      ),
    );
  }
}
