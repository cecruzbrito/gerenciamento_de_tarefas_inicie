// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ImageIconsApp extends StatelessWidget {
  const ImageIconsApp({super.key, required this.icon});
  final IconImage icon;
  @override
  Widget build(BuildContext context) {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
      child: Image.asset(icon.path, height: 100, width: 100),
    );
  }
}

enum IconImage {
  success,
  cancel,
  fail;

  String get path {
    switch (this) {
      case IconImage.success:
        return "assets/icons/completed.webp";

      case IconImage.cancel:
        return "assets/icons/cancel.webp";

      case IconImage.fail:
        return "assets/icons/warning.webp";
    }
  }
}
