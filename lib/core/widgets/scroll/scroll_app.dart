import 'package:flutter/material.dart';

import '../mixin/padding_app/padding_app.dart';

class ScrollbarApp extends StatelessWidget with PaddingApp {
  ScrollbarApp({super.key, required this.child, this.padding, this.direction = Axis.vertical});
  final Widget child;
  final EdgeInsets? padding;
  final Axis direction;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: padding ?? (paddingScrollDefault + EdgeInsets.only(bottom: 10)),
        scrollDirection: direction,
        child: child,
      ),
    );
  }
}
