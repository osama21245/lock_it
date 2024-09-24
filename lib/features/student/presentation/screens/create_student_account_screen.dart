import 'package:flutter/material.dart';

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
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField(),
          TextFormField()
        ],
      ))),
    );
  }
}
