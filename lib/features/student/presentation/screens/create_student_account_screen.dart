import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lock_it/core/common/widget/custom_text_field.dart';
import 'package:lock_it/core/helpers/spacer.dart';
import 'package:lock_it/core/theme/app_pallete.dart';
import 'package:lock_it/core/theme/font_weight_helper.dart';

import '../../../../core/common/widget/app_background_color_with_black.dart';

class CreateStudentAccountScreen extends StatefulWidget {
  const CreateStudentAccountScreen({super.key});

  @override
  State<CreateStudentAccountScreen> createState() =>
      _CreateStudentAccountScreenState();
}

class _CreateStudentAccountScreenState
    extends State<CreateStudentAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackgroundColorWithBlack(
          screenContent: SafeArea(
              child: Column(
        children: [
          const CustomTextField(title: "Email adress"),
          verticalSpace(40),
          Stack(
            children: [
              Container(
                width: 230.w,
                height: 55.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(125, 0, 90, 163), width: 2),
                    gradient: RadialGradient(
                      center: const Alignment(0.6, 2),
                      radius: 4.5.w,
                      colors: const [
                        Color(0xff011B21), // Black color
                        Color(0xff00C2FF), // Blue color
                      ],
                      stops: const [
                        0.0,
                        7.0
                      ], // Adjust the stop point for the black color
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, -4),
                        color: Color.fromARGB(133, 0, 167, 218),
                        blurRadius: 18.0,
                        blurStyle: BlurStyle.normal,
                      )
                    ]),
                child: const Center(
                    child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 17,
                      fontWeight: FontWeightHelper.semiBold),
                )),
              ),
              Container(
                width: 230.w,
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(31, 255, 255, 255),
                          Color.fromARGB(0, 254, 200, 241),
                          Color.fromARGB(0, 254, 200, 241),
                          Color.fromARGB(0, 254, 200, 241),
                          Color.fromARGB(0, 254, 200, 241),
                          Color.fromARGB(0, 254, 200, 241)
                        ])),
              )
            ],
          ),
          TextFormField(),
          TextFormField(),
          TextFormField()
        ],
      ))),
    );
  }
}
