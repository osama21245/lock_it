import 'package:flutter/material.dart';

navigationTo(BuildContext context, Widget page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}

navigationBack(BuildContext context) {
  Navigator.of(context).pop();
}

navigationOf(BuildContext context, Widget page) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}
