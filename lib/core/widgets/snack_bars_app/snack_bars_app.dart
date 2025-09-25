import 'package:flutter/material.dart';

import '../../../main.dart';

class SnackBarsApp {
  static success(String msg) async {
    if (scaffoldMessengerKey.currentState == null) return;

    return scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 10,
        duration: Duration(seconds: 2),
        content: Row(
          spacing: 10,
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            Flexible(child: Text(msg)),
          ],
        ),
      ),
    );
  }

  static error(String msg) async {
    if (scaffoldMessengerKey.currentState == null) return;
    return scaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 10,
        duration: Duration(seconds: 1),
        content: Row(
          spacing: 10,
          children: [
            Icon(Icons.cancel, color: Colors.red),
            Flexible(child: Text(msg)),
          ],
        ),
      ),
    );
  }
}
